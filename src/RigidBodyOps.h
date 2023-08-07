/*
* Operators for creating and modifying RigidBody objects in the graph.
*/
#ifndef RIGIDBODY_H
#define RIGIDBODY_H

#include "Bulletfrost.h"
#include "RigidBodyOpsExport.h"

namespace Bullet {

    // Setters
    BULLETFROST_DECL
        void set_rigid_body_damping(
            const Amino::Ptr<RigidBody>& rigid_body, float linear_damping, float angular_damping,
            Amino::Ptr<RigidBody>& out_rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");

    // Getters

    BULLETFROST_DECL
        void rigid_body_transform(
            const RigidBody& rigid_body,
            Bifrost::Math::float3& position,
            Bifrost::Math::float4& orientation
        )
        AMINO_ANNOTATE("Amino::Node");

    // debug

    BULLETFROST_DECL
        void is_copy(const RigidBody& rigid_body, bool& is_copy)
        AMINO_ANNOTATE("Amino::Node");

} // Bullet

#endif