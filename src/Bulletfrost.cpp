#include "Bulletfrost.h"
#include <btBulletDynamicsCommon.h>
#include "BulletCollision/Gimpact/btGImpactShape.h"
#include <Amino/Cpp/ClassDefine.h>
#include <string>
#include <vector>

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

    // Copy, this is problem but I don't think it will get called.
    CollisionShape(const CollisionShape& input) {
        shape = input.shape;
        mesh = input.mesh;
        child_shapes = input.child_shapes;
    }

    // Plane
    CollisionShape(Bifrost::Math::float3 normal, float plane_constant) {
        shape =  new btStaticPlaneShape(convertV3(normal), plane_constant);
    }

    // Box
    CollisionShape(Bifrost::Math::float3 extents) {
        shape = new btBoxShape(convertV3(extents));
    }

    // Sphere
    CollisionShape(float radius) {
		shape = new btSphereShape(radius);
	}

    // Point Cloud
    CollisionShape(Amino::Array<Bifrost::Math::float3> points) {
        btConvexHullShape* hull = new btConvexHullShape();
        for (int i = 0; i < points.size(); i++) {
			hull->addPoint(convertV3(points[i]));
		}
        hull->optimizeConvexHull(); // Are there situations where this shouldn't be called?
		shape = hull;
	}

    //Mesh
    CollisionShape(Amino::Array<Bifrost::Math::float3x3> triangles, bool use_bvh) {
        mesh = new btTriangleMesh();
        for (int i = 0; i < triangles.size(); i++) {
            mesh->addTriangle(
	            convertV3(triangles[i].c0),
	            convertV3(triangles[i].c1),
	            convertV3(triangles[i].c2)
	        );
        }

        if (use_bvh) {
            shape = new btBvhTriangleMeshShape(mesh, true);
        }
        else {
            btGImpactMeshShape* gshape = new btGImpactMeshShape(mesh);
            gshape->updateBound();
            shape = gshape;
		}
    }

    //Compound Shape
    CollisionShape(
        Amino::Array<Amino::Ptr<CollisionShape>> child_shapes,
        Amino::Array<Bifrost::Math::float3> translates,
        Amino::Array<Bifrost::Math::float4> rotates
    ) : child_shapes(child_shapes) 
    {
        int size = child_shapes.size();
        Bifrost::Math::float3 def_t; def_t.x = 0; def_t.y = 0; def_t.z = 0;
        Bifrost::Math::float4 def_r; def_r.x = 0; def_r.y = 0; def_r.z = 0; def_r.w = 1;
        translates.resize(size, def_t);
        rotates.resize(size, def_r);

        btCompoundShape* compound = new btCompoundShape();
        for (int i = 0; i < size; i++) {
			compound->addChildShape(btTransform(convertQuat(rotates[i]), convertV3(translates[i])), child_shapes[i]->shape);
		}
        shape = compound;
    }

    ~CollisionShape() {
        delete shape;
        delete mesh;
    }

    //TODO: convert this to operator
    void setChildTransform(int index, Bifrost::Math::float3 position, Bifrost::Math::float4 orientation) {
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

            /*auto objArray = dynamicsWorld->getCollisionObjectArray();
            for (int i = 0; i < dynamicsWorld->getNumCollisionObjects(); i++) {
                RigidBody* bif_rb = (Bullet::RigidBody*)(objArray[i]->getUserPointer());
                bif_rb->scene = nullptr;
			}*/

            delete dynamicsWorld;
            delete broadphase;
            delete collisionConfig;
            delete dispatcher;
            delete solver;
            delete ref_count;
        }
    }
};


class Bullet::RigidBody {
public:
    btRigidBody* body;
    Amino::Ptr<Collision::CollisionShape> collision_shape;
    BulletScene* scene = nullptr;

    void bodyFromData(const RigidBodyData& rb_data) {
        collision_shape = rb_data.collision_shape;

        btVector3 inertia(0, 0, 0);
        collision_shape->shape->calculateLocalInertia(rb_data.mass, inertia);
        btDefaultMotionState* motionState = new btDefaultMotionState(btTransform(convertQuat(rb_data.orientation), convertV3(rb_data.position)));
        body = new btRigidBody(rb_data.mass, motionState, collision_shape->shape, inertia);

        body->setLinearVelocity(convertV3(rb_data.linear_velocity));
        body->setAngularVelocity(convertV3(rb_data.angular_velocity));
        body->setFriction(rb_data.friction);
        body->setRestitution(rb_data.restitution);
        body->setDamping(rb_data.linear_damping, rb_data.angular_damping);
    }

    RigidBody() {
        RigidBodyData rb_data;
        rb_data.orientation.w = 1;
        bodyFromData(rb_data);
    }

    RigidBody(RigidBodyData rb_data) {
        bodyFromData(rb_data);
    }

    RigidBody(const RigidBodyData& rb_data, const BulletScene& in_scene) {
        bodyFromData(rb_data);
        scene = new BulletScene(in_scene);
        scene->dynamicsWorld->addRigidBody(body);
    }

    RigidBody(const RigidBody& input) {  // bad bad bad bad bad bad bad
        body = input.body;
        collision_shape = input.collision_shape;
        scene = input.scene;
    }

    ~RigidBody() {
        if (scene) {
            scene->dynamicsWorld->removeRigidBody(body);
            delete scene;
        }

        if (body) {
            delete body->getMotionState();
            delete body;
        }
        
    }

};



class Bullet::Constrain::Constraint {
public:
    btTypedConstraint* constraint = nullptr;
    BulletScene* scene = nullptr;

    Constraint() {
    }

    Constraint(const Constraint& input) {
    }

    Constraint(btTypedConstraint* constraint, const BulletScene& in_scene) : constraint(constraint) {
        scene = new BulletScene(in_scene);
        scene->dynamicsWorld->addConstraint(constraint);
    }

    Constraint(Amino::Ptr<RigidBody> rb_a, btTransform frame_a,  Amino::Ptr<RigidBody> rb_b, btTransform frame_b, const float& break_threshold) {
        constraint = new btFixedConstraint(*rb_a->body, *rb_b->body, frame_a, frame_b);
        constraint->setBreakingImpulseThreshold(break_threshold);
        if (rb_a->scene->dynamicsWorld == rb_b->scene->dynamicsWorld) {
            scene = new BulletScene(*(rb_a->scene));
            scene->dynamicsWorld->addConstraint(constraint);
        }
    }

    ~Constraint() {
        if (scene) {
            scene->dynamicsWorld->removeConstraint(constraint);
            delete scene;
        }

        delete constraint;
    }
};



namespace Bullet {

    namespace Collision {
        void plane_collision(const Bifrost::Math::float3& normal, const float plane_constant, Amino::Ptr<CollisionShape>& collision_shape) {
            collision_shape = Amino::newClassPtr<CollisionShape>(normal, plane_constant);
        }


        void box_collision(const Bifrost::Math::float3& extents, Amino::Ptr<CollisionShape>& collision_shape) {
            collision_shape = Amino::newClassPtr<CollisionShape>(extents);
        }


        void sphere_collision(const float radius, Amino::Ptr<CollisionShape>& collision_shape) {
            collision_shape = Amino::newClassPtr<CollisionShape>(radius);
        }


        void point_cloud_collision(
            const Amino::Array<Bifrost::Math::float3>& points,
            Amino::Ptr<CollisionShape>& collision_shape
        ) {
            collision_shape = Amino::newClassPtr<CollisionShape>(points);
        }


        void mesh_collision(
            const Amino::Array<Bifrost::Math::float3x3>& triangles,
            const bool use_bvh,
            Amino::Ptr<CollisionShape>& collision_shape
        ) {
            collision_shape = Amino::newClassPtr<CollisionShape>(triangles, use_bvh);
        }


        void compound_collision(
            const Amino::Array<Amino::Ptr<CollisionShape>>& child_shapes,
            const Amino::Array<Bifrost::Math::float3>& translates,
            const Amino::Array<Bifrost::Math::float4>& rotates,
            Amino::Ptr<CollisionShape>& collision_shape
        ) {
            collision_shape = Amino::newClassPtr<CollisionShape>(child_shapes, translates, rotates);
        }
    } // Collision



    namespace Constrain {
        void constrain_fixed(
            const Amino::Ptr<RigidBody>& rigid_body_a, const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a,
            const Amino::Ptr<RigidBody>& rigid_body_b, const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b,
            const float& break_theshold, Amino::Ptr<Constraint>& constraint
        ) {
            btTransform frame_a(convertQuat(orient_a), convertV3(pivot_a));
            btTransform frame_b(convertQuat(orient_b), convertV3(pivot_b));
            constraint = Amino::newClassPtr<Constraint>(rigid_body_a, frame_a, rigid_body_b, frame_b, break_theshold);
        };

        void constrain_6dof_spring(
            const Amino::Ptr<RigidBody>& rigid_body_a, const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a,
            const Amino::Ptr<RigidBody>& rigid_body_b, const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b,
            const Bifrost::Math::float3& linear_spring_stiffness, const Bifrost::Math::float3& linear_spring_damp,
            const float& break_theshold, Amino::Ptr<Constraint>& constraint
        ) {
            btTransform frame_a(convertQuat(orient_a), convertV3(pivot_a));
            btTransform frame_b(convertQuat(orient_b), convertV3(pivot_b));
            btGeneric6DofSpringConstraint* bt_con = new btGeneric6DofSpringConstraint(*rigid_body_a->body, *rigid_body_b->body, frame_a, frame_b, true);

            bt_con->setBreakingImpulseThreshold(break_theshold);

            bt_con->setAngularLowerLimit(btVector3(-0.26, -0.26, -0.26));
            bt_con->setAngularUpperLimit(btVector3(0.26, 0.26, 0.26));

            bt_con->setLinearLowerLimit(btVector3(-1, -1, -1));
            bt_con->setLinearUpperLimit(btVector3(1, 1, 1));

            if (linear_spring_stiffness.x > 0) {
                bt_con->enableSpring(0, true);
                bt_con->setStiffness(0, linear_spring_stiffness.x);
                bt_con->enableSpring(3, true);
                bt_con->setStiffness(3, linear_spring_stiffness.x);
            }
            if (linear_spring_stiffness.y > 0) {
	            bt_con->enableSpring(1, true);
	            bt_con->setStiffness(1, linear_spring_stiffness.y);
                bt_con->enableSpring(4, true);
                bt_con->setStiffness(4, linear_spring_stiffness.y);
            }
            if (linear_spring_stiffness.z > 0) {
                bt_con->enableSpring(2, true);
                bt_con->setStiffness(2, linear_spring_stiffness.z);
                bt_con->enableSpring(5, true);
                bt_con->setStiffness(5, linear_spring_stiffness.z);
            }
            bt_con->setDamping(0, linear_spring_damp.x);
            bt_con->setDamping(1, linear_spring_damp.y);
            bt_con->setDamping(2, linear_spring_damp.z);
            bt_con->setDamping(3, linear_spring_damp.x);
            bt_con->setDamping(4, linear_spring_damp.y);
            bt_con->setDamping(5, linear_spring_damp.z);
            bt_con->setEquilibriumPoint();
            //bt_con->setAxis(btVector3(-1, 0, 0), btVector3(1, 0, 0));

            constraint = Amino::newClassPtr<Constraint>(bt_con, *(rigid_body_a->scene));

        };

    } // Constrain



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


    void create_rigid_body(const RigidBodyData& rigid_body_data, Amino::Ptr<RigidBody>& rigid_body) {
        rigid_body = Amino::newClassPtr<RigidBody>(rigid_body_data);
	}


    void remove_rigid_bodies(BulletScene& bullet_scene, const Amino::Array<Amino::Ptr<RigidBody>>& rigid_bodies) {
        for (const Amino::Ptr<RigidBody>& rigid_body : rigid_bodies) {
			bullet_scene.dynamicsWorld->removeRigidBody(rigid_body->body);
            //rigid_body->scene = nullptr;
		}
    }


    void rigid_body_transform(const RigidBody& rigid_body, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation) {
        btTransform trans;
        rigid_body.body->getMotionState()->getWorldTransform(trans);
        position = convertV3(trans.getOrigin());
        orientation = convertQuat(trans.getRotation());
    }


    void body_count(const BulletScene& bullet_scene, unsigned int& count) {
		count = bullet_scene.dynamicsWorld->getNumCollisionObjects();
	}

} // Bullet