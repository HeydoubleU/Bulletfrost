/*
* Operators for the creating and modifying Constraint objects in the graph.
* Manipulating constraints is not thread safe and should only be used in serial loops. For-each loops and auto-looping may crash.
*/

#ifndef CONSTRAIN_H
#define CONSTRAIN_H

#include "Bulletfrost.h"
#include "ConstrainOpsExport.h"

namespace Bullet {

    namespace Constrain {

        CONSTRAIN_DECL
            //This is intended to be the only way to create a constraint. The other operators are for setting parameters on the constraint created by this.
            // If the set_constraint_* operator sets params not supported by the input constraint's type, the operator is bypassed.
            void constrain_rigid_bodies(
                const ConstraintType& type,
                const Amino::Ptr<RigidBody>& rigid_body_a, const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const Amino::Ptr<RigidBody>& rigid_body_b, const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                Amino::Ptr<Constraint>& constraint
            )
            AMINO_ANNOTATE("Amino::Node");

        CONSTRAIN_DECL
            void set_constraint_hinge(
                Amino::Ptr<Constraint>& constraint AMINO_ANNOTATE("Amino::InOut outName=out_constraint"), const Bifrost::Math::float3& axis,
                const bool& limit, const float& limit_max, const float& limit_min, const float& softness, const float& bias, const float& relax,
                const bool& motor, const float& motor_velocity, const float& motor_impulse
            )
            AMINO_ANNOTATE("Amino::Node");

        CONSTRAIN_DECL
            void set_constraint_slider(
                Amino::Ptr<Constraint>& constraint AMINO_ANNOTATE("Amino::InOut outName=out_constraint"),
                const bool& linear_limit, const float& linear_limit_max, const float& linear_limit_min,
                const bool& angular_limit, const float& angular_limit_max, const float& angular_limit_min,
                const Bifrost::Math::float3& lin_SRD, const Bifrost::Math::float3& ang_SRD,
                const float& linear_ortho_stiffness, const float& angular_ortho_stiffness
            )
            AMINO_ANNOTATE("Amino::Node");

        CONSTRAIN_DECL
        void set_constraint_cone(
            Amino::Ptr<Constraint>& constraint AMINO_ANNOTATE("Amino::InOut outName=out_constraint"),
            const float& swing_span_a, const float& swing_span_b, const float& twist_span,
            const float& softness, const float& bias, const float& relaxation, const float& damping,
            const bool& motor, const Bifrost::Math::float4& motor_target, const float& motor_impulse
            )
            AMINO_ANNOTATE("Amino::Node");

        CONSTRAIN_DECL
            void set_constraint_sixdof_limits(
                const Amino::Ptr<Constraint>& constraint,
                const Limits& linear_limits, const Limits& angular_limits,
                Amino::Ptr<Constraint>& out_constraint
            )
			AMINO_ANNOTATE("Amino::Node");

        CONSTRAIN_DECL
            void set_constraint_sixdof_springs(
                Amino::Ptr<Constraint>& constraint AMINO_ANNOTATE("Amino::InOut outName=out_constraint"),
                const Bifrost::Math::float3& linear_stiffness, const Bifrost::Math::float3& linear_damping,
                const Bifrost::Math::float3& angular_stiffness, const Bifrost::Math::float3& angular_damping
            )
            AMINO_ANNOTATE("Amino::Node");

        CONSTRAIN_DECL
            void set_constraint_sixdof_motors (
                Amino::Ptr<Constraint>& constraint AMINO_ANNOTATE("Amino::InOut outName=out_constraint"),
                const Motors& linear_motors, const Motors& angular_motors
            )
            AMINO_ANNOTATE("Amino::Node");

    } // Constrain

} // Bullet

#endif