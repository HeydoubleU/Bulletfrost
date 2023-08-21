/*
* Operators for creating and modifying RigidBody objects in the graph.
*/

#include "Bulletfrost.h"

namespace Bullet {

    namespace RBD {

        BULLETFROST_DECL
            void create_rigid_body(const RigidBodyData& rigid_body_data, Amino::Ptr<RigidBody>& rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void activate_rigid_body(const Amino::Ptr<RigidBody>& rigid_body, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        // Setters ==================================================================================================================================

        BULLETFROST_DECL
            void set_rigid_body_mass(const Amino::Ptr<RigidBody>& rigid_body, const float mass, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_friction(const Amino::Ptr<RigidBody>& rigid_body, const float friction, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_damping(const Amino::Ptr<RigidBody>& rigid_body, const float linear_damping, const float angular_damping, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_physical_material(
                const Amino::Ptr<RigidBody>& rigid_body, const PhysicalMaterial& physical_material, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_velocity(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& linear_velocity, const Bifrost::Math::float3& angular_velocity, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_linear_velocity(const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& linear_velocity, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_angular_velocity(const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& angular_velocity, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_transform(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& position, const Bifrost::Math::float4& orientation, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_position(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& position, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_orientation(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float4& orientation, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_activation(const Amino::Ptr<RigidBody>& rigid_body, const int state, const bool force, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_ignore_collision(
                const Amino::Ptr<RigidBody>& rigid_body,
                const Amino::Array<Amino::Ptr<RigidBody>>& other_rigid_bodies AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
                const bool ignore, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_mode(const Amino::Ptr<RigidBody>& rigid_body, const RigidBodyMode mode, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_rigid_body_shape(const Amino::Ptr<RigidBody>& rigid_body, const Amino::Ptr<Collision::CollisionShape>& collision_shape, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");


        // Getters ==================================================================================================================================

        BULLETFROST_DECL
            void get_rigid_body_transform(const RigidBody& rigid_body, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_mode(const Amino::Ptr<RigidBody>& rigid_body, RigidBodyMode& mode)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_position(const RigidBody& rigid_body, Bifrost::Math::float3& position)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_orientation(const RigidBody& rigid_body, Bifrost::Math::float4& orientation)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_velocity(const RigidBody& rigid_body, Bifrost::Math::float3& linear_velocity, Bifrost::Math::float3& angular_velocity)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_linear_velocity(const RigidBody& rigid_body, Bifrost::Math::float3& linear_velocity)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_angular_velocity(const RigidBody& rigid_body, Bifrost::Math::float3& angular_velocity)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_physical_material(const RigidBody& rigid_body, PhysicalMaterial& physical_material)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_data(const RigidBody& rigid_body, RigidBodyData& rigid_body_data)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_rigid_body_shape(const RigidBody& rigid_body, Amino::Ptr<Collision::CollisionShape>& collision_shape)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");



        // Force Application ========================================================================================================================

        BULLETFROST_DECL
            void apply_rigid_body_force_torque(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void apply_rigid_body_force(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& position, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void apply_rigid_body_central_force(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void apply_rigid_body_torque(
                const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    }

} // Bullet