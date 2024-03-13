#include <btBulletDynamicsCommon.h>
#include "ConstrainOps.h"


template <typename T>
inline void setSixdofLimits(T constr, const Bullet::Constrain::Limits& linear_limits, const Bullet::Constrain::Limits& angular_limits) {
    // Set constraint limits for SixDOF and SixDOFMororized constraints

    if (linear_limits.enable.x)
        constr->setLimit(0, linear_limits.min.x, linear_limits.max.x);
    else
        constr->setLimit(0, -BIG_FLOAT, BIG_FLOAT);

    if (linear_limits.enable.y)
        constr->setLimit(1, linear_limits.min.y, linear_limits.max.y);
    else
        constr->setLimit(1, -BIG_FLOAT, BIG_FLOAT);

    if (linear_limits.enable.z)
        constr->setLimit(2, linear_limits.min.z, linear_limits.max.z);
    else
        constr->setLimit(2, -BIG_FLOAT, BIG_FLOAT);

    if (angular_limits.enable.x)
        constr->setLimit(3, angular_limits.min.x, angular_limits.max.x);
    else
        constr->setLimit(3, -PI, PI);

    if (angular_limits.enable.y)
        constr->setLimit(4, angular_limits.min.y, angular_limits.max.y);
    else
        constr->setLimit(4, -PI, PI);

    if (angular_limits.enable.z)
        constr->setLimit(5, angular_limits.min.z, angular_limits.max.z);
    else
        constr->setLimit(5, -PI, PI);
}


namespace Bullet {

    namespace Constrain {

        void constrain_rigid_bodies(  // Create constraint
            const ConstraintType& type,
            const Amino::Ptr<RBD::RigidBody>& rigid_body_a, const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a,
            const Amino::Ptr<RBD::RigidBody>& rigid_body_b, const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b,
            const bool disable_collision, Amino::Ptr<Constraint>& constraint
        ) {
            Constraint* constr;

            if (rigid_body_b->is_default) {
                constr = new Constraint(type, rigid_body_a->rb, nullptr, pivot_a, orient_a, pivot_b, orient_b);
            }

            else if (rigid_body_a->is_default) {
				constr = new Constraint(type, nullptr, rigid_body_b->rb, pivot_a, orient_a, pivot_b, orient_b);
			}

            else {
                constr = new Constraint(type, rigid_body_a->rb, rigid_body_b->rb, pivot_a, orient_a, pivot_b, orient_b);
                constr->disable_collision = disable_collision;
            }
            
            constraint = Amino::Ptr<Constraint>(constr);
        }


        void set_constraint_breaking(const Amino::Ptr<Constraint>& constraint, const float& breaking_threshold, Amino::Ptr<Constraint>& out_constraint)
        {
            if (breaking_threshold > 0)
                constraint->constraint->setBreakingImpulseThreshold(breaking_threshold);
            else
                constraint->constraint->setBreakingImpulseThreshold(BIG_FLOAT);

            out_constraint = constraint;
        }


        void set_constraint_frames(
            const Amino::Ptr<Constraint>& constraint,
            const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a,
            const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b,
            Amino::Ptr<Constraint>& out_constraint
        ) {
            constraint->setFrames(pivot_a, orient_a, pivot_b, orient_b);
            out_constraint = constraint;
        }

        // Set typed constraint parameters, each set_constraint_* follows the same pattern
        void set_constraint_hinge(
            const Amino::Ptr<Constraint>& constraint, const Bifrost::Math::float3& axis,
            const bool& limit, const float& limit_max, const float& limit_min, const float& softness, const float& bias, const float& relax,
            const bool& motor, const float& motor_velocity, const float& motor_impulse,
            Amino::Ptr<Constraint>& out_constraint
        ) {
            // 1. Check type and bypass if it doesn't match
            if (constraint->type != ConstraintType::Hinge) {
                out_constraint = constraint;
                return;
            }

            // 2. Cast to correct type
            btHingeConstraint* constr = (btHingeConstraint*)(constraint->constraint);

            // 3. Set parameters...
            btVector3 axis_converted = convertV3(axis);
            constr->setAxis(axis_converted);
            constr->enableAngularMotor(motor, motor_velocity, motor_impulse);

            // There is no disabling limits, rather they're just set to a large range
            if (limit)
                constr->setLimit(limit_min, limit_max, softness, bias, relax);
            else
                constr->setLimit(-PI, PI);

            out_constraint = constraint;
        }


        void set_constraint_sixdof_limits(
            const Amino::Ptr<Constraint>& constraint,
            const Limits& linear_limits, const Limits& angular_limits,
            Amino::Ptr<Constraint>& out_constraint
        ) {
            if (constraint->type == ConstraintType::SixDOF) {
                btGeneric6DofConstraint* constr = (btGeneric6DofConstraint*)(constraint->constraint);
                setSixdofLimits(constr, linear_limits, angular_limits);
            }
            else if (constraint->type == ConstraintType::SixDOFMotorized) {
                btGeneric6DofSpring2Constraint* constr = (btGeneric6DofSpring2Constraint*)(constraint->constraint);
                setSixdofLimits(constr, linear_limits, angular_limits);
            }

            out_constraint = constraint;
        }


        void set_constraint_sixdof_springs(
            const Amino::Ptr<Constraint>& constraint,
            const Bifrost::Math::float3& linear_stiffness, const Bifrost::Math::float3& linear_damping,
            const Bifrost::Math::float3& angular_stiffness, const Bifrost::Math::float3& angular_damping,
            Amino::Ptr<Constraint>& out_constraint
        ) {
            if (constraint->type != ConstraintType::SixDOFMotorized) {
                out_constraint = constraint;
                return;
            }

            btGeneric6DofSpring2Constraint* constr = (btGeneric6DofSpring2Constraint*)(constraint->constraint);

            // Springs, if stiffness is not > 0, disable spring
            constr->enableSpring(0, linear_stiffness.x > 0);
            constr->setStiffness(0, linear_stiffness.x);
            constr->setDamping(0, linear_damping.x);
            constr->enableSpring(1, linear_stiffness.y > 0);
            constr->setStiffness(1, linear_stiffness.y);
            constr->setDamping(1, linear_damping.y);
            constr->enableSpring(2, linear_stiffness.z > 0);
            constr->setStiffness(2, linear_stiffness.z);
            constr->setDamping(2, linear_damping.z);

            constr->enableSpring(3, angular_stiffness.x > 0);
            constr->setStiffness(3, angular_stiffness.x);
            constr->setDamping(3, angular_stiffness.x);
            constr->enableSpring(4, angular_stiffness.y > 0);
            constr->setStiffness(4, angular_stiffness.y);
            constr->setDamping(4, angular_stiffness.y);
            constr->enableSpring(5, angular_stiffness.z > 0);
            constr->setStiffness(5, angular_stiffness.z);
            constr->setDamping(5, angular_stiffness.z);

            out_constraint = constraint;
        }


        void set_constraint_sixdof_motors(const Amino::Ptr<Constraint>& constraint, const Motors& linear_motors, const Motors& angular_motors, Amino::Ptr<Constraint>& out_constraint)
        {
            if (constraint->type != ConstraintType::SixDOFMotorized) {
                out_constraint = constraint;
                return;
            }

            btGeneric6DofSpring2Constraint* constr = (btGeneric6DofSpring2Constraint*)(constraint->constraint);

            // Motors
            constr->enableMotor(0, linear_motors.force.x != 0);
            constr->setMaxMotorForce(0, linear_motors.force.x);
            constr->setTargetVelocity(0, linear_motors.velocity.x);
            constr->enableMotor(1, linear_motors.force.y != 0);
            constr->setMaxMotorForce(1, linear_motors.force.y);
            constr->setTargetVelocity(1, linear_motors.velocity.y);
            constr->enableMotor(2, linear_motors.force.z != 0);
            constr->setMaxMotorForce(2, linear_motors.force.z);
            constr->setTargetVelocity(2, linear_motors.velocity.z);

            constr->enableMotor(3, angular_motors.force.x != 0);
            constr->setMaxMotorForce(3, angular_motors.force.x);
            constr->setTargetVelocity(3, angular_motors.velocity.x);
            constr->enableMotor(4, angular_motors.force.y != 0);
            constr->setMaxMotorForce(4, angular_motors.force.y);
            constr->setTargetVelocity(4, angular_motors.velocity.y);
            constr->enableMotor(5, angular_motors.force.z != 0);
            constr->setMaxMotorForce(5, angular_motors.force.z);
            constr->setTargetVelocity(5, angular_motors.velocity.z);

            // Servos
            constr->setServo(0, linear_motors.servo.x);
            constr->setServoTarget(0, linear_motors.target.x);
            constr->setServo(1, linear_motors.servo.y);
            constr->setServoTarget(1, linear_motors.target.y);
            constr->setServo(2, linear_motors.servo.z);
            constr->setServoTarget(2, linear_motors.target.z);

            constr->setServo(3, angular_motors.servo.x);
            constr->setServoTarget(3, angular_motors.target.x);
            constr->setServo(4, angular_motors.servo.y);
            constr->setServoTarget(4, angular_motors.target.y);
            constr->setServo(5, angular_motors.servo.z);
            constr->setServoTarget(5, angular_motors.target.z);

            out_constraint = constraint;
        }


        void set_constraint_slider(
            const Amino::Ptr<Constraint>& constraint,
            const bool& linear_limit, const float& linear_limit_max, const float& linear_limit_min,
            const bool& angular_limit, const float& angular_limit_max, const float& angular_limit_min,
            const Bifrost::Math::float3& lin_SRD, const Bifrost::Math::float3& ang_SRD,
            const float& linear_ortho_stiffness, const float& angular_ortho_stiffness,
            Amino::Ptr<Constraint>& out_constraint
        ) {

            if (constraint->type != ConstraintType::Slider) {
                out_constraint = constraint;
                return;
            }

            btSliderConstraint* constr = (btSliderConstraint*)(constraint->constraint);
            if (linear_limit) {
                constr->setUpperLinLimit(linear_limit_max);
                constr->setLowerLinLimit(linear_limit_min);
            }
            else {
                constr->setUpperLinLimit(BIG_FLOAT);
                constr->setLowerLinLimit(-BIG_FLOAT);
            }

            if (angular_limit) {
                constr->setUpperAngLimit(angular_limit_max);
                constr->setLowerAngLimit(angular_limit_min);
            }
            else {
                constr->setUpperAngLimit(PI);
                constr->setLowerAngLimit(-PI);
            }
            
            constr->setSoftnessLimLin(lin_SRD.x);
            constr->setRestitutionLimLin(lin_SRD.y);
            constr->setDampingLimLin(lin_SRD.z);

            constr->setSoftnessLimAng(ang_SRD.x);
            constr->setRestitutionLimAng(ang_SRD.y);
            constr->setDampingLimAng(ang_SRD.z);

            // Setting 'softness' but param is called stiffness because that seems to be the effect.
            constr->setSoftnessOrthoLin(linear_ortho_stiffness);
            constr->setSoftnessOrthoAng(angular_ortho_stiffness);

            //// These seem to have no effect, or my brain hab big problem
            //constr->setRestitutionOrthoLin(ortho_lin_SRD.y);
            //constr->setDampingOrthoLin(ortho_lin_SRD.z);
            // 
            //constr->setRestitutionOrthoAng(ortho_ang_SRD.y);
            //constr->setDampingOrthoAng(ortho_ang_SRD.z);
            //
            //constr->setSoftnessDirLin(dir_lin_SRD.x);
            //constr->setRestitutionDirLin(dir_lin_SRD.y);
            //constr->setDampingDirLin(dir_lin_SRD.z);
            //
            //constr->setSoftnessDirAng(dir_ang_SRD.x);
            //constr->setRestitutionDirAng(dir_ang_SRD.y);
            //constr->setDampingDirAng(dir_ang_SRD.z);

            out_constraint = constraint;
        }


        void set_constraint_cone(
            const Amino::Ptr<Constraint>& constraint,
            const float& swing_span_a, const float& swing_span_b, const float& twist_span,
            const float& softness, const float& bias, const float& relaxation, const float& damping,
            const bool& motor, const Bifrost::Math::float4& motor_target, const float& motor_impulse,
            Amino::Ptr<Constraint>& out_constraint
        ) {
            if (constraint->type != ConstraintType::Cone) {
                out_constraint = constraint;
                return;
            }

            btConeTwistConstraint* constr = (btConeTwistConstraint*)(constraint->constraint);
            constr->enableMotor(motor);
            if (motor) {
                constr->setMaxMotorImpulse(motor_impulse);
                constr->setMotorTarget(convertQuat(motor_target));
            }

            constr->setLimit(swing_span_a, swing_span_b, twist_span, softness, bias, relaxation);
            constr->setDamping(damping);

            out_constraint = constraint;
        }

        void set_constraint_enabled(const Amino::Ptr<Constraint>& constraint, const bool enabled, Amino::Ptr<Constraint>& out_constraint) {
            constraint->constraint->setEnabled(enabled);
            out_constraint = constraint;
        }

        void get_constraint_enabled(const Amino::Ptr<Constraint>& constraint, bool& enabled) {
			enabled = constraint->constraint->isEnabled();
		}

        void get_constraint_type(const Amino::Ptr<Constraint>& constraint, ConstraintType& type) {
            type = constraint->type;
        }

        void get_constraint_initial_frames(
            const Constraint& constraint,
            Bifrost::Math::float3& pivot_a, Bifrost::Math::float4& orient_a,
            Bifrost::Math::float3& pivot_b, Bifrost::Math::float4& orient_b
        ) {
            pivot_a = constraint.init_pos_a;
            orient_a = constraint.init_orient_a;
            pivot_b = constraint.init_pos_b;
            orient_b = constraint.init_orient_b;
        }

    } // Constrain

} // Bullet