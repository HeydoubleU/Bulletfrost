#include <btBulletDynamicsCommon.h>
#include "RigidBodyOps.h"


namespace Bullet {

    namespace RBD {

        // Setters ==================================================================================================================================

        void create_rigid_body(const RigidBodyData& rigid_body_data, Amino::Ptr<RigidBody>& rigid_body)
        {
            rigid_body = Amino::newClassPtr<RigidBody>(rigid_body_data);
        }

        void activate_rigid_body(const Amino::Ptr<RigidBody>& rigid_body, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            rigid_body->body->activate(true);
            out_rigid_body = rigid_body;
        }

        void set_rigid_body_mass(const Amino::Ptr<RigidBody>& rigid_body, const float mass, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (!rigid_body->rb) {
				out_rigid_body = rigid_body;
				return;
			}
            // Cast away constness. Normally a non const object should be passed if changes are to be made.
            // The problem is that may cause copying, therefore frequent adding/removing from the bullet_scene. performance ouch.
            auto* rb = const_cast<RigidBody*>(rigid_body.get());

            // Make changes
            rb->phy_mat.mass = mass;
            if (recompute_inertia) {
                btVector3 inertia(0, 0, 0);
                rb->collision_shape->shape->calculateLocalInertia(mass, inertia);
                rb->rb->setMassProps(mass, inertia);
            }
            else {
                rb->rb->setMassProps(mass, rb->rb->getLocalInertia());
            }

            // Return the same amino pointer
            out_rigid_body = rigid_body;
        }


        void set_rigid_body_friction(const Amino::Ptr<RigidBody>& rigid_body, const float friction, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            auto* rb = const_cast<RigidBody*>(rigid_body.get());
            rb->phy_mat.friction = friction;
            rb->body->setFriction(friction);
            out_rigid_body = rigid_body;
        }


        void set_rigid_body_damping(const Amino::Ptr<RigidBody>& rigid_body, const float linear_damping, const float angular_damping, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (rigid_body->rb) {
                auto* rb = const_cast<RigidBody*>(rigid_body.get());
                rb->phy_mat.linear_damping = linear_damping;
                rb->phy_mat.angular_damping = angular_damping;
                rb->rb->setDamping(linear_damping, angular_damping);
            }
            out_rigid_body = rigid_body;
        }


        void set_rigid_body_physical_material(
            const Amino::Ptr<RigidBody>& rigid_body, const PhysicalMaterial& physical_material, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body
        ) {
            auto* rb = const_cast<RigidBody*>(rigid_body.get());
            rb->body->setFriction(physical_material.friction);
            rb->body->setRestitution(physical_material.restitution);

            if (rigid_body->rb) {
                // Mass
                rb->phy_mat = physical_material;
                if (recompute_inertia) {
                    btVector3 inertia(0, 0, 0);
                    rb->collision_shape->shape->calculateLocalInertia(physical_material.mass, inertia);
                    rb->rb->setMassProps(physical_material.mass, inertia);
                }
                else {
                    rb->rb->setMassProps(physical_material.mass, rb->rb->getLocalInertia());
                }
                rb->rb->setDamping(physical_material.linear_damping, physical_material.angular_damping);
            }

            out_rigid_body = rigid_body;
        }


        void set_rigid_body_velocity(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& linear_velocity, const Bifrost::Math::float3& angular_velocity, Amino::Ptr<RigidBody>& out_rigid_body
        ) {
            if (rigid_body->rb) {
                rigid_body->rb->setLinearVelocity(convertV3(linear_velocity));
                rigid_body->rb->setAngularVelocity(convertV3(angular_velocity));
            }
            
            out_rigid_body = rigid_body;
        }

        void set_rigid_body_linear_velocity(const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& linear_velocity, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (rigid_body->rb) {
                rigid_body->rb->setLinearVelocity(convertV3(linear_velocity));
            }
            out_rigid_body = rigid_body;
        }

        void set_rigid_body_angular_velocity(const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& angular_velocity, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (rigid_body->rb) {
                rigid_body->rb->setAngularVelocity(convertV3(angular_velocity));
            }
            
            out_rigid_body = rigid_body;
        }


        void set_rigid_body_transform(const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& position, const Bifrost::Math::float4& orientation, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (rigid_body->rb) {
                btTransform trans(convertQuat(orientation), convertV3(position));
                rigid_body->rb->getMotionState()->setWorldTransform(trans);
            }
            else {
                btTransform trans(convertQuat(orientation), convertV3(position));
                rigid_body->body->setWorldTransform(trans);
            }

            out_rigid_body = rigid_body;
        }

        void set_rigid_body_position(const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& position, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            btTransform trans = rigid_body->body->getWorldTransform();
            trans.setOrigin(convertV3(position));
            rigid_body->body->setWorldTransform(trans);
            out_rigid_body = rigid_body;
        }

        void set_rigid_body_orientation(const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float4& orientation, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            btTransform trans = rigid_body->body->getWorldTransform();
            trans.setRotation(convertQuat(orientation));
            rigid_body->body->setWorldTransform(trans);
            out_rigid_body = rigid_body;
        }

        void set_rigid_body_activation(const Amino::Ptr<RigidBody>& rigid_body, const int state, const bool force, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (force)
				rigid_body->body->forceActivationState(state);
			else
				rigid_body->body->setActivationState(state);
            out_rigid_body = rigid_body;
        }

        void set_ignore_collision(const Amino::Ptr<RigidBody>& rigid_body, const Amino::Array<Amino::Ptr<RigidBody>>& other_rigid_bodies, const bool ignore, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (ignore) {
                for (const auto other_rigid_body : other_rigid_bodies) {
					rigid_body->body->setIgnoreCollisionCheck(other_rigid_body->body, true);
				}
			}
            else {
                for (const auto other_rigid_body : other_rigid_bodies) {
					rigid_body->body->setIgnoreCollisionCheck(other_rigid_body->body, false);
				}
			}

            out_rigid_body = rigid_body;
        }

        void set_rigid_body_mode(const Amino::Ptr<RigidBody>& rigid_body, const RigidBodyMode mode, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            auto* rb = const_cast<RigidBody*>(rigid_body.get());
            rb->setMode(mode);
            out_rigid_body = rigid_body;
        }

        void set_rigid_body_shape(const Amino::Ptr<RigidBody>& rigid_body, const Amino::Ptr<Collision::CollisionShape>& collision_shape, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            auto* rb = const_cast<RigidBody*>(rigid_body.get());
            rb->collision_shape = collision_shape;
            rb->body->setCollisionShape(collision_shape->shape);
            btVector3 inertia(0, 0, 0);
            rb->collision_shape->shape->calculateLocalInertia(rb->phy_mat.mass, inertia);
            rb->outdated_proxy = true;
            out_rigid_body = rigid_body;
        }
        

        // Getters ==================================================================================================================================

        void get_rigid_body_transform(const RigidBody& rigid_body, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation)
        {
            auto trans = rigid_body.body->getWorldTransform();
            position = convertV3(trans.getOrigin());
            orientation = convertQuat(trans.getRotation());
        }

        void get_rigid_body_mode(const Amino::Ptr<RigidBody>& rigid_body, RigidBodyMode& mode)
        {
            mode = rigid_body->mode;
        }

        void get_rigid_body_position(const RigidBody& rigid_body, Bifrost::Math::float3& position)
        {
            position = convertV3(rigid_body.body->getWorldTransform().getOrigin());
        }

        void get_rigid_body_orientation(const RigidBody& rigid_body, Bifrost::Math::float4& orientation)
        {
            orientation = convertQuat(rigid_body.body->getWorldTransform().getRotation());
        }

        void get_rigid_body_velocity(const RigidBody& rigid_body, Bifrost::Math::float3& linear_velocity, Bifrost::Math::float3& angular_velocity)
        {
            if (rigid_body.rb) {
                linear_velocity = convertV3(rigid_body.rb->getLinearVelocity());
                angular_velocity = convertV3(rigid_body.rb->getAngularVelocity());
            }
            
        }

        void get_rigid_body_linear_velocity(const RigidBody& rigid_body, Bifrost::Math::float3& linear_velocity)
        {
            if (rigid_body.rb) {
                linear_velocity = convertV3(rigid_body.rb->getLinearVelocity());
            }
            
        }

        void get_rigid_body_angular_velocity(const RigidBody& rigid_body, Bifrost::Math::float3& angular_velocity)
        {
            if (rigid_body.rb) {
                angular_velocity = convertV3(rigid_body.rb->getAngularVelocity());
            }
        }

        void get_physical_material(const RigidBody& rigid_body, PhysicalMaterial& physical_material)
        {
            physical_material = rigid_body.phy_mat;
        }

        void get_rigid_body_data(const RigidBody& rigid_body, RigidBodyData& rigid_body_data)
        {
            rigid_body.getData(rigid_body_data);
        }

        void get_rigid_body_shape(const RigidBody& rigid_body, Amino::Ptr<Collision::CollisionShape>& collision_shape)
        {
            collision_shape = rigid_body.collision_shape;
        }


        // Force Application ========================================================================================================================
        // A force means how much to apply per second, an impulse is how much to apply instantaneously.
        // So for consistent results regardless of timestep, use impulse for single frame (impulse = true), force for continuous (impulse = false).
        void apply_rigid_body_force_torque(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        ) {
            if (!rigid_body->rb) {
                out_rigid_body = rigid_body;
                return;
            }

            auto* rb = const_cast<RigidBody*>(rigid_body.get());

            if (impulse) {
                rb->rb->applyCentralImpulse(convertV3(force));
                rb->rb->applyTorqueImpulse(convertV3(torque));
            }
            else {
                rb->rb->applyCentralForce(convertV3(force));
                rb->rb->applyTorque(convertV3(torque));
            }

            out_rigid_body = rigid_body;
        }

        void apply_rigid_body_force(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& position, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        ) {
            if (!rigid_body->rb) {
                out_rigid_body = rigid_body;
                return;
            }

            auto* rb = const_cast<RigidBody*>(rigid_body.get());

            if (impulse) {
                rb->rb->applyImpulse(convertV3(force), convertV3(position));
            }
            else {
                rb->rb->applyForce(convertV3(force), convertV3(position));
            }

            out_rigid_body = rigid_body;
        }

        void apply_rigid_body_central_force(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        ) {
            if (!rigid_body->rb) {
                out_rigid_body = rigid_body;
                return;
            }

            auto* rb = const_cast<RigidBody*>(rigid_body.get());

            if (impulse) {
                rb->rb->applyCentralImpulse(convertV3(force));
            }
            else {
                rb->rb->applyCentralForce(convertV3(force));
            }

            out_rigid_body = rigid_body;
        }

        void apply_rigid_body_torque(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        ) {
            if (!rigid_body->rb) {
                out_rigid_body = rigid_body;
                return;
            }

            auto* rb = const_cast<RigidBody*>(rigid_body.get());

            if (impulse) {
                rb->rb->applyTorqueImpulse(convertV3(torque));
            }
            else {
                rb->rb->applyTorque(convertV3(torque));
            }

            out_rigid_body = rigid_body;
        }

    } // RigidBody

} // Bullet