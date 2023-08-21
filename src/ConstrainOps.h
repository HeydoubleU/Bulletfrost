/*
* Operators for the creating and modifying Constraint objects in the graph.
* Manipulating constraints is not thread safe and should only be used in serial loops. For-each loops and auto-looping may crash.
*/

#include "Bulletfrost.h"

namespace Bullet {

    namespace Constrain {

        BULLETFROST_DECL
            //This is intended to be the only way to create a constraint. The other operators are for setting parameters on the constraint created by this.
            // If the set_constraint_* operator sets params not supported by the input constraint's type, the operator is bypassed.
            void constrain_rigid_bodies(
                const ConstraintType& type,
                const Amino::Ptr<RBD::RigidBody>& rigid_body_a, const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const Amino::Ptr<RBD::RigidBody>& rigid_body_b, const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const bool disable_collision, Amino::Ptr<Constraint>& constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_constraint_breaking(const Amino::Ptr<Constraint>& constraint, const float& breaking_threshold, Amino::Ptr<Constraint>& out_constraint)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_constraint_frames(
                const Amino::Ptr<Constraint>& constraint,
                const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                Amino::Ptr<Constraint>& out_constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");


        // SixDOF Setters ==================================================================================================================================

        BULLETFROST_DECL
            void set_constraint_sixdof_limits(
                const Amino::Ptr<Constraint>& constraint,
                const Limits& linear_limits, const Limits& angular_limits,
                Amino::Ptr<Constraint>& out_constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_constraint_sixdof_springs(
                const Amino::Ptr<Constraint>& constraint,
                const Bifrost::Math::float3& linear_stiffness, const Bifrost::Math::float3& linear_damping,
                const Bifrost::Math::float3& angular_stiffness, const Bifrost::Math::float3& angular_damping,
                Amino::Ptr<Constraint>& out_constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_constraint_sixdof_motors(
                const Amino::Ptr<Constraint>& constraint,
                const Motors& linear_motors, const Motors& angular_motors,
                Amino::Ptr<Constraint>& out_constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");


        // Other Setters ==================================================================================================================================
        // These seem to be neglected or something. Some of their parameters have unexpected or little to no effect.
        // They may still be useful but Fixed/Point/SixDOF should probably be preferred.

        BULLETFROST_DECL
            void set_constraint_hinge(
                const Amino::Ptr<Constraint>& constraint, const Bifrost::Math::float3& axis,
                const bool& limit, const float& limit_max, const float& limit_min, const float& softness, const float& bias, const float& relax,
                const bool& motor, const float& motor_velocity, const float& motor_impulse,
                Amino::Ptr<Constraint>& out_constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_constraint_slider(
                const Amino::Ptr<Constraint>& constraint,
                const bool& linear_limit, const float& linear_limit_max, const float& linear_limit_min,
                const bool& angular_limit, const float& angular_limit_max, const float& angular_limit_min,
                const Bifrost::Math::float3& lin_SRD, const Bifrost::Math::float3& ang_SRD,
                const float& linear_ortho_stiffness, const float& angular_ortho_stiffness,
                Amino::Ptr<Constraint>& out_constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
        void set_constraint_cone(
            const Amino::Ptr<Constraint>& constraint,
            const float& swing_span_a, const float& swing_span_b, const float& twist_span,
            const float& softness, const float& bias, const float& relaxation, const float& damping,
            const bool& motor, const Bifrost::Math::float4& motor_target, const float& motor_impulse,
            Amino::Ptr<Constraint>& out_constraint
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");


        // Other Common ==================================================================================================================================

        BULLETFROST_DECL
            void set_constraint_enabled(const Amino::Ptr<Constraint>& constraint, const bool enabled, Amino::Ptr<Constraint>& out_constraint)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_constraint_enabled(const Amino::Ptr<Constraint>& constraint, bool& enabled)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_constraint_type(const Amino::Ptr<Constraint>& constraint, ConstraintType& type)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_constraint_initial_frames(
                const Constraint& constraint,
                Bifrost::Math::float3& pivot_a, Bifrost::Math::float4& orient_a,
                Bifrost::Math::float3& pivot_b, Bifrost::Math::float4& orient_b
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    } // Constrain

} // Bullet