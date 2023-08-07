#include <btBulletDynamicsCommon.h>
#include "RigidBodyOps.h"


namespace Bullet {

    // Setters

    void set_rigid_body_damping(
        const Amino::Ptr<RigidBody>& rigid_body, float linear_damping, float angular_damping,
        Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());
        rb->setDamping(linear_damping, angular_damping);
        out_rigid_body = rigid_body;
	}

    void set_physics_material(
        const Amino::Ptr<RigidBody>& rigid_body, float linear_damping, float angular_damping,
        Amino::Ptr<RigidBody>& out_rigid_body
    ) {
        auto* rb = const_cast<RigidBody*>(rigid_body.get());
        rb->setDamping(linear_damping, angular_damping);
        out_rigid_body = rigid_body;
    }

    // Getters

    void rigid_body_transform(const RigidBody& rigid_body, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation) {
        btTransform trans;
        rigid_body.body->getMotionState()->getWorldTransform(trans);
        position = convertV3(trans.getOrigin());
        orientation = convertQuat(trans.getRotation());
    }

    // debug
    void is_copy(const RigidBody& rigid_body, bool& is_copy) {
		is_copy = rigid_body.is_copy;
	}

} // Bullet