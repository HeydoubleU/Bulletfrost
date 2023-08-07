
#include "Bulletfrost.h"
#include <btBulletDynamicsCommon.h>
#include "BulletCollision/Gimpact/btGImpactShape.h"
#include <Amino/Cpp/ClassDefine.h>

AMINO_DEFINE_DEFAULT_CLASS(Bullet::Collision::CollisionShape);
AMINO_DEFINE_DEFAULT_CLASS(Bullet::Constrain::Constraint);
AMINO_DEFINE_DEFAULT_CLASS(Bullet::BulletScene);
AMINO_DEFINE_DEFAULT_CLASS(Bullet::RigidBody);


// Utility

btVector3 convertV3(const Bifrost::Math::float3 vec) {
	return btVector3(vec.x, vec.y, vec.z);
}

Bifrost::Math::float3 convertV3(const btVector3 vec) {
    Bifrost::Math::float3 bifVec;
    bifVec.x = vec.x();
    bifVec.y = vec.y();
    bifVec.z = vec.z();
    return bifVec;
}

btQuaternion convertQuat(const Bifrost::Math::float4 vec) {
    return btQuaternion(vec.x, vec.y, vec.z, vec.w);
}

Bifrost::Math::float4 convertQuat(const btQuaternion vec) {
	Bifrost::Math::float4 bifVec;
	bifVec.x = vec.x();
	bifVec.y = vec.y();
	bifVec.z = vec.z();
	bifVec.w = vec.w();
	return bifVec;
}



//Classes
class Bullet::Collision::CollisionShape {
public:
    btCollisionShape* shape;
    btTriangleMesh* mesh = nullptr;
    Amino::Array<Amino::Ptr<CollisionShape>> child_shapes;

    CollisionShape() {
		shape = new btEmptyShape();
	}

    CollisionShape(const CollisionShape& input) {
        // TODO: fix this copy constructor, it is problem but I don't think it will get called normally.
        shape = input.shape;
        mesh = input.mesh;
        child_shapes = input.child_shapes;
    }

    CollisionShape(btCollisionShape* shape, btTriangleMesh* mesh = nullptr)
        : shape(shape), mesh(mesh) {}

    CollisionShape(btCollisionShape* shape, Amino::Array<Amino::Ptr<CollisionShape>> child_shapes)
        : shape(shape), child_shapes(child_shapes) {}

    ~CollisionShape() {
        delete shape;
        delete mesh;
    }
    void setChildTransform(int index, Bifrost::Math::float3 position, Bifrost::Math::float4 orientation) {
        //TODO: convert this to operator
        if (index >= child_shapes.size())
            return;

		btCompoundShape* compound = (btCompoundShape*)shape;
		compound->updateChildTransform(index, btTransform(convertQuat(orientation), convertV3(position)));
	}
};


class Bullet::BulletScene {
public:
    btBroadphaseInterface* broadphase;
    btDefaultCollisionConfiguration* collisionConfig;
    btCollisionDispatcher* dispatcher;
    btSequentialImpulseConstraintSolver* solver;
    btDiscreteDynamicsWorld* dynamicsWorld;

    int* ref_count = new int(1);

    BulletScene() {
        broadphase = new btDbvtBroadphase();
        collisionConfig = new btDefaultCollisionConfiguration();
        dispatcher = new btCollisionDispatcher(collisionConfig);
        solver = new btSequentialImpulseConstraintSolver();
        dynamicsWorld = new btDiscreteDynamicsWorld(dispatcher, broadphase, solver, collisionConfig);
    }

    BulletScene(const BulletScene& input) {
        *(input.ref_count) += 1;
        ref_count = input.ref_count;
        broadphase = input.broadphase;
        collisionConfig = input.collisionConfig;
        dispatcher = input.dispatcher;
        solver = input.solver;
        dynamicsWorld = input.dynamicsWorld;
    }

    ~BulletScene() {
        *ref_count -= 1;
        if (*ref_count <= 0) {
            delete dynamicsWorld;
            delete broadphase;
            delete collisionConfig;
            delete dispatcher;
            delete solver;
            delete ref_count;
        }
    }
};


void Bullet::RigidBody::bodyFromData() {
    btVector3 inertia(0, 0, 0);
    rb_data.collision_shape->shape->calculateLocalInertia(rb_data.mass, inertia);
    btDefaultMotionState* motionState = new btDefaultMotionState(btTransform(convertQuat(rb_data.orientation), convertV3(rb_data.position)));
    body = new btRigidBody(rb_data.mass, motionState, rb_data.collision_shape->shape, inertia);

    body->setLinearVelocity(convertV3(rb_data.linear_velocity));
    body->setAngularVelocity(convertV3(rb_data.angular_velocity));
    body->setFriction(rb_data.friction);
    body->setRestitution(rb_data.restitution);
    body->setDamping(rb_data.linear_damping, rb_data.angular_damping);
}

// Copy Constructor not thread safe, it might be without add to world idk.
Bullet::RigidBody::RigidBody(const RigidBody& input) : rb_data(input.rb_data) {
    is_copy = true;
    bodyFromData();
    scene = new BulletScene(*input.scene);
    //scene->dynamicsWorld->addRigidBody(body);
}

Bullet::RigidBody::RigidBody(const RigidBodyData& rb_data, const BulletScene& in_scene) : rb_data(rb_data) {
    bodyFromData();
    scene = new BulletScene(in_scene);
    scene->dynamicsWorld->addRigidBody(body);
}

Bullet::RigidBody::~RigidBody() {
    if (scene) {
        scene->dynamicsWorld->removeRigidBody(body);
        delete scene;
    }

    if (body) {
        delete body->getMotionState();
        delete body;
    }
        
}

void Bullet::RigidBody::setDamping(float lin_damp, float ang_damp) {
    rb_data.linear_damping = lin_damp;
    rb_data.angular_damping = ang_damp;
    body->setDamping(rb_data.linear_damping, rb_data.angular_damping);
}



Bullet::Constrain::Constraint::Constraint(
    Amino::Ptr<RigidBody> rb_a, Amino::Ptr<RigidBody> rb_b, const ConstraintType& type,
    Bifrost::Math::float3 pivot_a, Bifrost::Math::float3 pivot_b, Bifrost::Math::float4 orient_b, Bifrost::Math::float4 orient_a
) : type(type), pivot_a(pivot_a), pivot_b(pivot_b), orient_a(orient_a), orient_b(orient_b)
{
    if (type == ConstraintType::Point) {
        constraint = new btPoint2PointConstraint(*rb_a->body, *rb_b->body, convertV3(pivot_a), convertV3(pivot_b));
	}
    else {
        btTransform frame_a(convertQuat(orient_a), convertV3(pivot_a));
        btTransform frame_b(convertQuat(orient_b), convertV3(pivot_b));
        switch (type) {
        case ConstraintType::Point:
            constraint = new btPoint2PointConstraint(*rb_a->body, *rb_b->body, convertV3(pivot_a), convertV3(pivot_b));
            break;
        case ConstraintType::Fixed:
            constraint = new btFixedConstraint(*rb_a->body, *rb_b->body, frame_a, frame_b);
            break;
        case ConstraintType::Hinge:
            constraint = new btHingeConstraint(*rb_a->body, *rb_b->body, frame_a, frame_b);
            break;
        case ConstraintType::SixDOF:
            constraint = new btGeneric6DofConstraint(*rb_a->body, *rb_b->body, frame_a, frame_b, true);
            break;
        case ConstraintType::SixDOFMotorized:
            constraint = new btGeneric6DofSpring2Constraint(*rb_a->body, *rb_b->body, frame_a, frame_b);
            break;
        case ConstraintType::Slider:
            constraint = new btSliderConstraint(*rb_a->body, *rb_b->body, frame_a, frame_b, true);
            break;
        case ConstraintType::Cone:
            constraint = new btConeTwistConstraint(*rb_a->body, *rb_b->body, frame_a, frame_b);
            break;
        }
    }    

    scene = new BulletScene(*rb_a->scene);
    scene->dynamicsWorld->addConstraint(constraint);
}

Bullet::Constrain::Constraint::~Constraint() {
    if (scene) {
        scene->dynamicsWorld->removeConstraint(constraint);
        delete scene;
    }

    delete constraint;
}



namespace Bullet {

    namespace Collision {

        void plane_collision(const Bifrost::Math::float3& normal, const float plane_constant, Amino::Ptr<CollisionShape>& collision_shape) {

            auto* shape = new btStaticPlaneShape(convertV3(normal), plane_constant);
            collision_shape = Amino::newClassPtr<CollisionShape>(shape);

        }


        void box_collision(const Bifrost::Math::float3& extents, Amino::Ptr<CollisionShape>& collision_shape) {

            auto* shape = new btBoxShape(convertV3(extents));
            collision_shape = Amino::newClassPtr<CollisionShape>(shape);

        }


        void sphere_collision(const float radius, Amino::Ptr<CollisionShape>& collision_shape) {

            auto* shape = new btSphereShape(radius);
            collision_shape = Amino::newClassPtr<CollisionShape>(shape);

        }


        void point_cloud_collision(const Amino::Array<Bifrost::Math::float3>& points, Amino::Ptr<CollisionShape>& collision_shape) {

            btConvexHullShape* shape = new btConvexHullShape();
            for (int i = 0; i < points.size(); i++) {
                shape->addPoint(convertV3(points[i]));
            }
            shape->optimizeConvexHull(); // Are there situations where this shouldn't be called?

            collision_shape = Amino::newClassPtr<CollisionShape>(shape);

        }


        void mesh_collision(const Amino::Array<Bifrost::Math::float3x3>& triangles, const bool use_bvh, Amino::Ptr<CollisionShape>& collision_shape) {

            auto* mesh = new btTriangleMesh();
            for (int i = 0; i < triangles.size(); i++) {
                mesh->addTriangle(convertV3(triangles[i].c0), convertV3(triangles[i].c1), convertV3(triangles[i].c2));
            }

            if (use_bvh) {
                auto* shape = new btBvhTriangleMeshShape(mesh, true);
                collision_shape = Amino::newClassPtr<CollisionShape>(shape, mesh);
            }
            else {
                auto* shape = new btGImpactMeshShape(mesh);
                shape->updateBound();
                collision_shape = Amino::newClassPtr<CollisionShape>(shape, mesh);
            }

        }


        void compound_collision(
            const Amino::Array<Amino::Ptr<CollisionShape>>& child_shapes, Amino::Array<Bifrost::Math::float3>& translates, Amino::Array<Bifrost::Math::float4>& rotates,
            Amino::Ptr<CollisionShape>& collision_shape
        ) {

            int size = child_shapes.size();
            Bifrost::Math::float3 def_t; def_t.x = 0; def_t.y = 0; def_t.z = 0;
            Bifrost::Math::float4 def_r; def_r.x = 0; def_r.y = 0; def_r.z = 0; def_r.w = 1;
            translates.resize(size, def_t);
            rotates.resize(size, def_r);

            btCompoundShape* shape = new btCompoundShape();
            for (int i = 0; i < size; i++) {
                shape->addChildShape(btTransform(convertQuat(rotates[i]), convertV3(translates[i])), child_shapes[i]->shape);
            }

            collision_shape = Amino::newClassPtr<CollisionShape>(shape, child_shapes);

        }
    } // Collision


    void create_bullet_scene(Amino::Ptr<BulletScene>& bullet_scene) {
        bullet_scene = Amino::newClassPtr<BulletScene>();
    }


    void set_gravity(BulletScene& bullet_scene, const Bifrost::Math::float3& gravity) {
        bullet_scene.dynamicsWorld->setGravity(convertV3(gravity));
    }


    void step_simulation(BulletScene& bullet_scene, const float delta_time) {
        bullet_scene.dynamicsWorld->stepSimulation(delta_time, 0);
    }


    void add_rigid_bodies(const BulletScene& bullet_scene, const Amino::Array<RigidBodyData>& rigid_body_data, Amino::Ptr<Amino::Array<Amino::Ptr<RigidBody>>>& rigid_bodies) {
        auto new_array = Amino::Array<Amino::Ptr<RigidBody>>();
        for (const RigidBodyData& data : rigid_body_data) {
            new_array.push_back(Amino::newClassPtr<RigidBody>(data, bullet_scene));
        }  
        rigid_bodies = Amino::newClassPtr<Amino::Array<Amino::Ptr<RigidBody>>>(new_array);
    }

} // Bullet