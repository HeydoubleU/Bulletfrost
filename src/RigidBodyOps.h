/*
* Operators for creating and modifying RigidBody objects in the graph.
*/
#ifndef RIGIDBODY_H
#define RIGIDBODY_H

#include "Bulletfrost.h"
#include "RigidBodyOpsExport.h"

namespace Bullet {


    // Setters ==================================================================================================================================

    BULLETFROST_DECL
        void set_rigid_body_mass(const Amino::Ptr<RigidBody>& rigid_body, const float mass, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body)
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void set_rigid_body_friction(const Amino::Ptr<RigidBody>& rigid_body, const float friction, Amino::Ptr<RigidBody>& out_rigid_body)
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void set_rigid_body_damping(const Amino::Ptr<RigidBody>& rigid_body, float linear_damping, float angular_damping, Amino::Ptr<RigidBody>& out_rigid_body)
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void set_rigid_body_physical_material(
            const Amino::Ptr<RigidBody>& rigid_body, const PhysicalMaterial& physical_material, const bool recompute_inertia, Amino::Ptr<RigidBody>& out_rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void set_rigid_body_velocity(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& linear_velocity, const Bifrost::Math::float3& angular_velocity, Amino::Ptr<RigidBody>& out_rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");


    // Getters ==================================================================================================================================

    BULLETFROST_DECL
        void rigid_body_transform(const RigidBody& rigid_body, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation)
        AMINO_ANNOTATE("Amino::Node");


    // Force Application ========================================================================================================================

    BULLETFROST_DECL
        void apply_rigid_body_force_torque(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void apply_rigid_body_force(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const Bifrost::Math::float3& position, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void apply_rigid_body_central_force(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& force, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void apply_rigid_body_torque(
            const Amino::Ptr<RigidBody>& rigid_body, const Bifrost::Math::float3& torque, const bool impulse, Amino::Ptr<RigidBody>& out_rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");


    // debug
    BULLETFROST_DECL
        void is_copy(const RigidBody& rigid_body, bool& is_copy)
        AMINO_ANNOTATE("Amino::Node");

} // Bullet

#endif

