#include "Bulletfrost.h"
#include <btBulletDynamicsCommon.h>
#include "BulletCollision/Gimpact/btGImpactShape.h"
#include <Amino/Cpp/ClassDefine.h>
#include <string>
#include <vector>

AMINO_DEFINE_DEFAULT_CLASS(Bullet::GenericCollisionShape);
AMINO_DEFINE_DEFAULT_CLASS(Bullet::BulletScene);


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

/**
* Basically a wrapper for btCollisionShape for passing through the graph
* also with constructor overloads for common shapes.
*/
class Bullet::GenericCollisionShape {
public:
    btCollisionShape* shape;
    btTriangleMesh* mesh = nullptr;
    Amino::Array<Amino::Ptr<GenericCollisionShape>> child_shapes;

    GenericCollisionShape() {
		shape = new btEmptyShape();
	}

    // Copy
    GenericCollisionShape(const GenericCollisionShape& input) {
        shape = input.shape;
        mesh = input.mesh;
        child_shapes = input.child_shapes;
    }

    // Plane
    GenericCollisionShape(Bifrost::Math::float3 normal, float plane_constant) {
        shape =  new btStaticPlaneShape(convertV3(normal), plane_constant);
    }

    // Box
    GenericCollisionShape(Bifrost::Math::float3 extents) {
        shape = new btBoxShape(convertV3(extents));
    }

    // Sphere
    GenericCollisionShape(float radius) {
		shape = new btSphereShape(radius);
	}

    // Point Cloud
    GenericCollisionShape(Amino::Array<Bifrost::Math::float3> points) {
        btConvexHullShape* hull = new btConvexHullShape();
        for (int i = 0; i < points.size(); i++) {
			hull->addPoint(convertV3(points[i]));
		}
        hull->optimizeConvexHull(); // Are there situations where this shouldn't be called?
		shape = hull;
	}

    //Mesh
    GenericCollisionShape(Amino::Array<Bifrost::Math::float3x3> triangles, bool use_bvh) {
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
    GenericCollisionShape(
        Amino::Array<Amino::Ptr<GenericCollisionShape>> child_shapes,
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


    //TODO: convert this to operator
    void setChildTransform(int index, Bifrost::Math::float3 position, Bifrost::Math::float4 orientation) {
        if (index >= child_shapes.size())
            return;

		btCompoundShape* compound = (btCompoundShape*)shape;
		compound->updateChildTransform(index, btTransform(convertQuat(orientation), convertV3(position)));
	}

    ~GenericCollisionShape() {
        delete shape;
        delete mesh;
    }
};


btRigidBody* constructRigidBody(Bullet::rigidBody rb) {
    btTransform xform(convertQuat(rb.rotation), convertV3(rb.position));
    btVector3 inertia(0, 0, 0);
    rb.collision_shape->shape->calculateLocalInertia(rb.mass, inertia);
    btRigidBody* rigid_body = new btRigidBody(rb.mass, new btDefaultMotionState(xform), rb.collision_shape->shape, inertia);

    return rigid_body;
}


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
            auto objArray = dynamicsWorld->getCollisionObjectArray();
            for (int i = 0; i < dynamicsWorld->getNumCollisionObjects(); i++) {
				btCollisionObject* obj = objArray[i];
				btRigidBody* body = btRigidBody::upcast(obj);
                if (body) {
					delete body->getMotionState();
				}
				dynamicsWorld->removeCollisionObject(obj);
				delete obj;
			}

            delete dynamicsWorld;
            delete broadphase;
            delete collisionConfig;
            delete dispatcher;
            delete solver;
        }
    }
};



// Operators
void Bullet::create_bullet_scene(Amino::Ptr<BulletScene>& bullet_scene) {
    bullet_scene = Amino::newClassPtr<BulletScene>();
}


void Bullet::set_gravity(BulletScene& bullet_scene, const Bifrost::Math::float3& gravity) {
    bullet_scene.dynamicsWorld->setGravity(convertV3(gravity));
}


void Bullet::step_simulation(BulletScene& bullet_scene, const float delta_time) {
    bullet_scene.dynamicsWorld->stepSimulation(delta_time, 0);
}


void Bullet::plane_collision(const Bifrost::Math::float3& normal, const float plane_constant, Amino::Ptr<GenericCollisionShape>& collision_shape) {
    collision_shape = Amino::newClassPtr<GenericCollisionShape>(normal, plane_constant);
}


void Bullet::box_collision(const Bifrost::Math::float3& extents, Amino::Ptr<GenericCollisionShape>& collision_shape) {
    collision_shape = Amino::newClassPtr<GenericCollisionShape>(extents);
}


void Bullet::sphere_collision(const float radius, Amino::Ptr<GenericCollisionShape>& collision_shape) {
    collision_shape = Amino::newClassPtr<GenericCollisionShape>(radius);
}

void Bullet::point_cloud_collision(
    const Amino::Array<Bifrost::Math::float3>& points,
    Amino::Ptr<GenericCollisionShape>& collision_shape
) {
    collision_shape = Amino::newClassPtr<GenericCollisionShape>(points);
}

void Bullet::mesh_collision(
    const Amino::Array<Bifrost::Math::float3x3>& triangles,
    const bool use_bvh,
    Amino::Ptr<GenericCollisionShape>& collision_shape
) {
    collision_shape = Amino::newClassPtr<GenericCollisionShape>(triangles, use_bvh);
}

void Bullet::compound_collision(
    const Amino::Array<Amino::Ptr<GenericCollisionShape>>& child_shapes,
    const Amino::Array<Bifrost::Math::float3>& translates,
    const Amino::Array<Bifrost::Math::float4>& rotates,
    Amino::Ptr<GenericCollisionShape>& collision_shape
) {
    collision_shape = Amino::newClassPtr<GenericCollisionShape>(child_shapes, translates, rotates);
}


void Bullet::add_rigid_bodies(
    BulletScene& bullet_scene,
    const Amino::Array<rigidBody>& rigid_bodies
) {
    for (rigidBody rigid_body : rigid_bodies) {
        btTransform xform(convertQuat(rigid_body.rotation), convertV3(rigid_body.position));
        btVector3 inertia(0, 0, 0);
        rigid_body.collision_shape->shape->calculateLocalInertia(rigid_body.mass, inertia);
        btRigidBody* btrb = new btRigidBody(rigid_body.mass, new btDefaultMotionState(xform), rigid_body.collision_shape->shape, inertia);
        bullet_scene.dynamicsWorld->addRigidBody(btrb);
    }
}


void Bullet::get_rigid_body_transform(const BulletScene& bullet_scene, const unsigned int id, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation) {
    if (id >= bullet_scene.dynamicsWorld->getNumCollisionObjects())
		return;

    btTransform trans;
    auto obj = bullet_scene.dynamicsWorld->getCollisionObjectArray()[id];
    auto rigid_body = btRigidBody::upcast(obj);
    if (rigid_body) {  // This should always be true (I think)
        rigid_body->getMotionState()->getWorldTransform(trans);
        position = convertV3(trans.getOrigin());
        orientation = convertQuat(trans.getRotation());
    }
}