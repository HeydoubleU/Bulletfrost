#include <btBulletDynamicsCommon.h>
#include "RigidBodyOps.h"


namespace Bullet {


    // Setters ==================================================================================================================================

    void set_rigid_body_mass(const Amino::Ptr<RigidBody>& rigid_body, const float mass, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body)
    {
        // Cast away constness. Normally a non const object should be passed if changes are to be made.
        // The problem is that may cause copying, therefore frequent adding/removing from the bullet_scene. performance ouch.
        auto* rb = const_cast<RigidBody*>(rigid_body.get());

        // Make changes
        rb->phy_mat.mass = mass;
        if (recompute_inertia) {
            btVector3 inertia(0, 0, 0);
            rb->collision_shape->shape->calculateLocalInertia(mass, inertia);
            rb->body->setMassProps(mass, inertia);
        }
        else {
			rb->body->setMassProps(mass, rb->body->getLocalInertia());
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


    void set_rigid_body_damping(const Amino::Ptr<RigidBody>& rigid_body, float linear_damping, float angular_damping, Amino::Ptr<RigidBody>& out_rigid_body)
    {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());

        rb->phy_mat.linear_damping = linear_damping;
        rb->phy_mat.angular_damping = angular_damping;
        rb->body->setDamping(linear_damping, angular_damping);

        out_rigid_body = rigid_body;
	}


    void set_rigid_body_physical_material(
        const Amino::Ptr<RigidBody>& rigid_body, const PhysicalMaterial& physical_material, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());

        // Mass
        rb->phy_mat = physical_material;
        if (recompute_inertia) {
            btVector3 inertia(0, 0, 0);
            rb->collision_shape->shape->calculateLocalInertia(physical_material.mass, inertia);
            rb->body->setMassProps(physical_material.mass, inertia);
        }
        else {
            rb->body->setMassProps(physical_material.mass, rb->body->getLocalInertia());
        }

        rb->body->setFriction(physical_material.friction);
        rb->body->setRestitution(physical_material.restitution);
        rb->body->setDamping(physical_material.linear_damping, physical_material.angular_damping);
    }


    void set_rigid_body_velocity(
        const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& linear_velocity, const Bifrost::Math::float3& angular_velocity, Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());
        rb->body->setLinearVelocity(convertV3(linear_velocity));
        rb->body->setAngularVelocity(convertV3(angular_velocity));
        out_rigid_body = rigid_body;
    }

    // Getters ==================================================================================================================================

    void rigid_body_transform(const RigidBody& rigid_body, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation) {
        btTransform trans;
        rigid_body.body->getMotionState()->getWorldTransform(trans);
        position = convertV3(trans.getOrigin());
        orientation = convertQuat(trans.getRotation());
    }


    // Force Application ========================================================================================================================
    // A force means how much to apply per second, an impulse is how much to apply instantaneously.
    // So for consistent results regardless of timestep, use impulse for single frame (impulse = true), force for continuous (impulse = false).
    void apply_rigid_body_force_torque(
        const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());

        if (impulse) {
            rb->body->applyCentralImpulse(convertV3(force));
            rb->body->applyTorqueImpulse(convertV3(torque));
        }
        else {
            rb->body->applyCentralForce(convertV3(force));
            rb->body->applyTorque(convertV3(torque));
        }

        out_rigid_body = rigid_body;
    }

    void apply_rigid_body_force(
        const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& position, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());

        if (impulse) {
            rb->body->applyImpulse(convertV3(force), convertV3(position));
        }
        else {
            rb->body->applyForce(convertV3(force), convertV3(position));
        }

        out_rigid_body = rigid_body;
    }

    void apply_rigid_body_central_force(
        const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());

        if (impulse) {
            rb->body->applyCentralImpulse(convertV3(force));
        }
        else {
            rb->body->applyCentralForce(convertV3(force));
        }

        out_rigid_body = rigid_body;
    }

    void apply_rigid_body_torque(
        const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());

        if (impulse) {
            rb->body->applyTorqueImpulse(convertV3(torque));
        }
        else {
            rb->body->applyTorque(convertV3(torque));
        }

        out_rigid_body = rigid_body;
    }

    // debug
    void is_copy(const RigidBody& rigid_body, bool& is_copy) {
		is_copy = rigid_body.is_copy;
	}

} // Bullet