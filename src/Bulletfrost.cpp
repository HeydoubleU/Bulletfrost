#include "Bulletfrost.h"
#include <btBulletDynamicsCommon.h>
#include "BulletDynamics/Dynamics/btDiscreteDynamicsWorldMt.h"
#include "BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolverMt.h"
#include "BulletCollision/CollisionDispatch/btCollisionDispatcherMt.h"
#include "BulletCollision/Gimpact/btGImpactShape.h"
#include <Amino/Cpp/ClassDefine.h>

AMINO_DEFINE_DEFAULT_CLASS(Bullet::Collision::CollisionShape);
AMINO_DEFINE_DEFAULT_CLASS(Bullet::Constrain::Constraint);
AMINO_DEFINE_DEFAULT_CLASS(Bullet::BulletScene);
AMINO_DEFINE_DEFAULT_CLASS(Bullet::RBD::RigidBody);


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


template<typename T>
void setConstraintFramesGeneric(btTypedConstraint* constraint, btTransform frame_a, btTransform frame_b)
{
    T* constr = (T*)constraint;
    constr->setFrames(frame_a, frame_b);
    auto bruh = (btSliderConstraint*)constraint;
}

namespace Bullet {

    namespace Collision {

        MeshData::MeshData(int num_tri, int num_vert) : num_tri(num_tri), num_vert(num_vert) {
            fv = new int[num_tri * 3];
            pp = new float[num_vert * 3];
            btmesh = new btTriangleIndexVertexArray(
                num_tri,
                fv,
                3 * sizeof(int),
                num_vert,
                pp,
                3 * sizeof(float)
            );
        }

        MeshData::MeshData(const MeshData& input) : num_tri(input.num_tri), num_vert(input.num_vert) {
            fv = new int[num_tri * 3];
            for (int i = 0; i < num_tri * 3; i++)
                fv[i] = input.fv[i];

            pp = new float[num_vert * 3];
            for (int i = 0; i < num_vert * 3; i++)
                pp[i] = input.pp[i];

            btmesh = new btTriangleIndexVertexArray(num_tri, fv, 3 * sizeof(int), num_vert, pp, 3 * sizeof(float));
        }

        MeshData::~MeshData()
        {
            delete[] fv;
            delete[] pp;
            delete btmesh;
        }


        CollisionShape::CollisionShape(const CollisionShape& input)
        {
            is_copy = true;
            dynamic = input.dynamic;
            type = input.type;

            if (type == ShapeType::Plane) {
                auto* in_shape = (btStaticPlaneShape*)input.shape;
                shape = new btStaticPlaneShape(in_shape->getPlaneNormal(), in_shape->getPlaneConstant());
            }
            else if (type == ShapeType::Box) {
                auto* in_shape = (btBoxShape*)input.shape;
                shape = new btBoxShape(in_shape->getHalfExtentsWithMargin());
            }
            else if (type == ShapeType::Sphere) {
                auto* in_shape = (btSphereShape*)input.shape;
                shape = new btSphereShape(in_shape->getRadius());
            }
            else if (type == ShapeType::PointCloud) {
                auto* in_shape = (btConvexHullShape*)input.shape;
                auto* points_shape = new btConvexHullShape();
                auto points = in_shape->getUnscaledPoints();
                for (int i = 0; i < in_shape->getNumPoints(); i++) {
                    points_shape->addPoint(points[i], false);
                }
                points_shape->recalcLocalAabb();
                points_shape->optimizeConvexHull();
                shape = points_shape;
            }
            else if (type == ShapeType::Mesh) {
                mesh = new MeshData(*input.mesh);
                auto* gshape = new btGImpactMeshShape(mesh->btmesh);
                gshape->updateBound();
                shape = gshape;
            }
            else if (type == ShapeType::MeshBVH) {
                mesh = new MeshData(*input.mesh);
                shape = new btBvhTriangleMeshShape(mesh->btmesh, true);
            }
            else if (type == ShapeType::Compound) {
                auto* in_shape = (btCompoundShape*)input.shape;
                auto* comp_shape = new btCompoundShape();
                for (int i = 0; i < in_shape->getNumChildShapes(); i++) {
                    comp_shape->addChildShape(in_shape->getChildTransform(i), in_shape->getChildShape(i));
                }
                child_shapes = input.child_shapes;
                shape = comp_shape;
            }
            else {
                shape = new btEmptyShape();
            }

            shape->setMargin(input.shape->getMargin());
            shape->setLocalScaling(input.shape->getLocalScaling());
        }

        CollisionShape::CollisionShape() {
            shape = new btEmptyShape();
            type = ShapeType::Empty;
        }

        CollisionShape::~CollisionShape() {
            delete shape;
            delete mesh;
        }

        void CollisionShape::setChildTransform(int index, Bifrost::Math::float3 position, Bifrost::Math::float4 orientation) {
            //TODO: convert this to operator
            if (index >= child_shapes.size())
                return;

            btCompoundShape* compound = (btCompoundShape*)shape;
            compound->updateChildTransform(index, btTransform(convertQuat(orientation), convertV3(position)));
        }

    }
}


class Bullet::BulletScene {
public:
    btBroadphaseInterface* broadphase;
    btCollisionDispatcher* dispatcher;
    //btConstraintSolverPoolMt* pool = nullptr;
    btSequentialImpulseConstraintSolver* solver;
    btDefaultCollisionConfiguration* collisionConfig;
    btDiscreteDynamicsWorld* dynamicsWorld;

    BulletScene() {
        broadphase = new btDbvtBroadphase();
        collisionConfig = new btDefaultCollisionConfiguration();
        dispatcher = new btCollisionDispatcher(collisionConfig);
        solver = new btSequentialImpulseConstraintSolver();
        dynamicsWorld = new btDiscreteDynamicsWorld(dispatcher, broadphase, solver, collisionConfig);
    }

    /*BulletScene(const int threads) {
        // Constructor for multithreaded world
        // This is disabled as it causes a crash, probably something I'm doing wrong.
        // Mt performance gains don't seem to be that great anyway, might be a better strategy to use multiple worlds in bifrost for-each.
        broadphase = new btDbvtBroadphase();

        btDefaultCollisionConstructionInfo cci;
        cci.m_defaultMaxPersistentManifoldPoolSize = 80000;
        cci.m_defaultMaxCollisionAlgorithmPoolSize = 80000;
        collisionConfig = new btDefaultCollisionConfiguration(cci);


        if (threads > 1) {
            const int tc = 1000;
            btConstraintSolver* solvers[tc];
            for (int i = 0; i < tc; ++i)
            {
                solvers[i] = new btSequentialImpulseConstraintSolver();
            }

            pool = new btConstraintSolverPoolMt(solvers, tc);
            dispatcher = new btCollisionDispatcherMt(collisionConfig);
            solver = new btSequentialImpulseConstraintSolverMt();
            dynamicsWorld = new btDiscreteDynamicsWorldMt(dispatcher, broadphase, pool, solver, collisionConfig);
        }
        else {
            dispatcher = new btCollisionDispatcher(collisionConfig);
            solver = new btSequentialImpulseConstraintSolver();
            dynamicsWorld = new btDiscreteDynamicsWorld(dispatcher, broadphase, solver, collisionConfig);
        }
            
    }*/

    BulletScene(const BulletScene& input) {
        broadphase = input.broadphase;
        dispatcher = input.dispatcher;
        solver = input.solver;
        collisionConfig = input.collisionConfig;
        dynamicsWorld = input.dynamicsWorld;
    }

    ~BulletScene() {
        delete dynamicsWorld;
        delete broadphase;
        delete collisionConfig;
        delete dispatcher;
        delete solver;
    }

    void addObject(const RBD::RigidBody* rigid_body) const {
        if (rigid_body->rb)
            dynamicsWorld->addRigidBody(rigid_body->rb);
        else
            dynamicsWorld->addCollisionObject(rigid_body->body);
	}

    void removeObject(const RBD::RigidBody* rigid_body) const {
        if (rigid_body->rb)
            dynamicsWorld->removeRigidBody(rigid_body->rb);
        else
            dynamicsWorld->removeCollisionObject(rigid_body->body);
    }
};



// Rigid Body =========================================================================================================
void Bullet::RBD::RigidBody::setMode(RigidBodyMode new_mode)
{
    if (mode == new_mode)
        return;

    mode = new_mode;
    auto flags = body->getCollisionFlags();

    if (mode == RigidBodyMode::Static) {
        flags |= btCollisionObject::CF_STATIC_OBJECT;
        flags &= ~btCollisionObject::CF_KINEMATIC_OBJECT;
    }

    else if (mode == RigidBodyMode::Kinematic) {
        flags &= ~btCollisionObject::CF_STATIC_OBJECT;
        flags |= btCollisionObject::CF_KINEMATIC_OBJECT;
    }

    else {
        flags &= ~btCollisionObject::CF_STATIC_OBJECT;
        flags &= ~btCollisionObject::CF_KINEMATIC_OBJECT;
    }

    body->setCollisionFlags(flags);
}

void Bullet::RBD::RigidBody::bodyFromData(const RigidBodyData& rb_data) {
    collision_shape = rb_data.collision_shape;
    phy_mat = rb_data.physical_material;

    

    if (rb_data.mode == RigidBodyMode::Static) {
        body = new btCollisionObject();
        body->setCollisionShape(collision_shape->shape);
        body->setWorldTransform(btTransform(convertQuat(rb_data.orientation), convertV3(rb_data.position)));
    }
	
    else {
        btVector3 inertia(0, 0, 0);
        collision_shape->shape->calculateLocalInertia(phy_mat.mass, inertia);
        btDefaultMotionState* motionState = new btDefaultMotionState(btTransform(convertQuat(rb_data.orientation), convertV3(rb_data.position)));
        rb = new btRigidBody(phy_mat.mass, motionState, collision_shape->shape, inertia);

        rb->setLinearVelocity(convertV3(rb_data.linear_velocity));
        rb->setAngularVelocity(convertV3(rb_data.angular_velocity));
        rb->setDamping(phy_mat.linear_damping, phy_mat.angular_damping);
        body = rb;
    }

    body->setFriction(phy_mat.friction);
    body->setRestitution(phy_mat.restitution);

    setMode(rb_data.mode);
}

Bullet::RBD::RigidBody::RigidBody(const RigidBody& input) {
    is_copy = true;
    auto rb_data = RigidBodyData();
    rb_data.mode = input.mode;
    rb_data.collision_shape = input.collision_shape;
    rb_data.physical_material = input.phy_mat;

    btTransform trans = input.body->getWorldTransform();
    rb_data.position = convertV3(trans.getOrigin());
    rb_data.orientation = convertQuat(trans.getRotation());
    if (input.rb) {
        rb_data.linear_velocity = convertV3(input.rb->getLinearVelocity());
        rb_data.angular_velocity = convertV3(input.rb->getAngularVelocity());
    }

    bodyFromData(rb_data);

    if (input.scene)
        scene = input.scene;
}

Bullet::RBD::RigidBody::RigidBody(const RigidBodyData& rb_data, const Amino::Ptr<BulletScene>& in_scene) {
    bodyFromData(rb_data);
    scene = in_scene;
}

Bullet::RBD::RigidBody::~RigidBody() {
    if (scene) {
        scene->dynamicsWorld->removeCollisionObject(body);
    }

    if (rb)
        delete rb->getMotionState();
    delete body;  
}

void Bullet::RBD::RigidBody::getData(RigidBodyData& rb_data) const {
    rb_data.collision_shape = collision_shape;
    rb_data.physical_material = phy_mat;
    rb_data.mode = mode;

    btTransform trans = body->getWorldTransform();
    rb_data.position = convertV3(trans.getOrigin());
    rb_data.orientation = convertQuat(trans.getRotation());

    if (rb) {
        rb_data.linear_velocity = convertV3(rb->getLinearVelocity());
        rb_data.angular_velocity = convertV3(rb->getAngularVelocity());
    }
}



// Constraint =======================================================================================================
Bullet::Constrain::Constraint::Constraint(
    const ConstraintType& type, btRigidBody* rb_a, btRigidBody* rb_b,
    Bifrost::Math::float3 pivot_a, Bifrost::Math::float4 orient_a, Bifrost::Math::float3 pivot_b, Bifrost::Math::float4 orient_b
) : type(type)
{
    if (rb_a == nullptr || rb_b == nullptr) {
        world_empty = new btRigidBody(0, nullptr, nullptr);

        if (rb_a == nullptr)
			rb_a = world_empty;
        else {
            auto trans = rb_a->getWorldTransform();
            init_pos_a = convertV3(trans.getOrigin());
            init_orient_a = convertQuat(trans.getRotation());
        }
        if (rb_b == nullptr)
            rb_b = world_empty;
        {
            auto trans = rb_b->getWorldTransform();
            init_pos_b = convertV3(trans.getOrigin());
            init_orient_b = convertQuat(trans.getRotation());
        }
    }
    else {
        auto trans = rb_a->getWorldTransform();
        init_pos_a = convertV3(trans.getOrigin());
        init_orient_a = convertQuat(trans.getRotation());
        trans = rb_b->getWorldTransform();
        init_pos_b = convertV3(trans.getOrigin());
        init_orient_b = convertQuat(trans.getRotation());
    }

    if (type == ConstraintType::Point) {
        constraint = new btPoint2PointConstraint(*rb_a, *rb_b, convertV3(pivot_a), convertV3(pivot_b));
    }
    else {
        btTransform frame_a(convertQuat(orient_a), convertV3(pivot_a));
        btTransform frame_b(convertQuat(orient_b), convertV3(pivot_b));

        switch (type) {
        case ConstraintType::SixDOF:
            constraint = new btGeneric6DofConstraint(*rb_a, *rb_b, frame_a, frame_b, true);
            break;
        case ConstraintType::SixDOFMotorized:
            constraint = new btGeneric6DofSpring2Constraint(*rb_a, *rb_b, frame_a, frame_b);
            break;
        case ConstraintType::Fixed:
            constraint = new btFixedConstraint(*rb_a, *rb_b, frame_a, frame_b);
            break;
        case ConstraintType::Hinge:
            constraint = new btHingeConstraint(*rb_a, *rb_b, frame_a, frame_b);
            break;
        case ConstraintType::Slider:
            constraint = new btSliderConstraint(*rb_a, *rb_b, frame_a, frame_b, true);
            break;
        case ConstraintType::Cone:
            constraint = new btConeTwistConstraint(*rb_a, *rb_b, frame_a, frame_b);
            break;
        }
    }
}

Bullet::Constrain::Constraint::Constraint(const Constraint& input) {
    // temp placeholder, this normally shouldn't get called but here just so no crash if it does.
    type = ConstraintType::Point;
    constraint = new btPoint2PointConstraint(input.constraint->getRigidBodyA(), input.constraint->getRigidBodyB(), btVector3(0,0,0), btVector3(0,0,0));
}

Bullet::Constrain::Constraint::~Constraint() {
    if (scene) {
        scene->dynamicsWorld->removeConstraint(constraint);
    }

    delete constraint;
    delete world_empty;
}

void Bullet::Constrain::Constraint::setFrames(Bifrost::Math::float3 pivot_a, Bifrost::Math::float4 orient_a, Bifrost::Math::float3 pivot_b, Bifrost::Math::float4 orient_b) const
{
    if (type == ConstraintType::Point) {
        auto* constr = (btPoint2PointConstraint*)constraint;
        constr->setPivotA(convertV3(pivot_a));
        constr->setPivotB(convertV3(pivot_b));
    }
    else {
        btTransform frame_a(convertQuat(orient_a), convertV3(pivot_a));
        btTransform frame_b(convertQuat(orient_b), convertV3(pivot_b));

        switch (type) {
        case ConstraintType::SixDOF:
            setConstraintFramesGeneric<btGeneric6DofConstraint>(constraint, frame_a, frame_b);
            break;
        case ConstraintType::SixDOFMotorized:
            setConstraintFramesGeneric<btGeneric6DofSpring2Constraint>(constraint, frame_a, frame_b);
            break;
        case ConstraintType::Fixed:
            setConstraintFramesGeneric<btFixedConstraint>(constraint, frame_a, frame_b);
            break;
        case ConstraintType::Hinge:
            setConstraintFramesGeneric<btHingeConstraint>(constraint, frame_a, frame_b);
            break;
        case ConstraintType::Slider:
            setConstraintFramesGeneric<btSliderConstraint>(constraint, frame_a, frame_b);
            break;
        case ConstraintType::Cone:
            setConstraintFramesGeneric<btConeTwistConstraint>(constraint, frame_a, frame_b);
            break;
        }
    }
}



namespace Bullet {

    void create_bullet_scene(Amino::Ptr<BulletScene>& bullet_scene) {
        bullet_scene = Amino::newClassPtr<BulletScene>();
    }


    void set_gravity(const Amino::Ptr<BulletScene>& bullet_scene, const Bifrost::Math::float3& gravity, Amino::Ptr<BulletScene>& out_bullet_scene) {
        bullet_scene->dynamicsWorld->setGravity(convertV3(gravity));
        out_bullet_scene = bullet_scene;
    }


    void step_simulation(const Amino::Ptr<BulletScene>& bullet_scene, const float delta_time, Amino::Ptr<BulletScene>& out_bullet_scene) {
        bullet_scene->dynamicsWorld->stepSimulation(delta_time, 0);
        out_bullet_scene = bullet_scene;
    }


    // RigidBodyData input
    void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const RBD::RigidBodyData& input, Amino::Ptr<RBD::RigidBody>& output)
    {
        output = Amino::newClassPtr<RBD::RigidBody>(input, bullet_scene);
        bullet_scene->addObject(output.get());
    }

    void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Array<RBD::RigidBodyData>& input, Amino::Ptr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>& output)
    {
        auto rb_array = Amino::Array<Amino::Ptr<RBD::RigidBody>>();

        for (const auto& rb_data : input) {
			auto rb = Amino::newClassPtr<RBD::RigidBody>(rb_data, bullet_scene);
            bullet_scene->addObject(rb.get());
			rb_array.push_back(rb);
		}

        output = Amino::newClassPtr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>(rb_array);
    }


    // RigidBody input
    void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Ptr<RBD::RigidBody>& input, Amino::Ptr<RBD::RigidBody>& output)
    {
        if (input->scene) {  // pass if already in a scene, in the future this should replace the scene if it's different from the input
            output = input;
            return;
        }

        auto* rb = const_cast<RBD::RigidBody*>(input.get());
        rb->scene = bullet_scene;

        bullet_scene->addObject(rb);
        output = input;
    }

    void remove_from_bullet_scene(const Amino::Ptr<RBD::RigidBody>& input, Amino::Ptr<RBD::RigidBody>& output)
    {
        if (!input->scene) {
            output = input;
            return;
        }

        auto* rb = const_cast<RBD::RigidBody*>(input.get());
        rb->scene->removeObject(rb);
        rb->scene = nullptr;
        output = input;
    }

    void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Array<Amino::Ptr<RBD::RigidBody>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>& output)
    {
        for (int i = 0; i < input.size(); i++) {
            if (input[i]->scene)
            	continue;

            auto* rb = const_cast<RBD::RigidBody*>(input[i].get());
            rb->scene = bullet_scene;
            bullet_scene->addObject(rb);
        }

        output = Amino::newClassPtr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>(input);
    }

    void remove_from_bullet_scene(const Amino::Array<Amino::Ptr<RBD::RigidBody>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>& output)
    {
        for (int i = 0; i < input.size(); i++) {
            if (!input[i]->scene)
                continue;

            auto* rb = const_cast<RBD::RigidBody*>(input[i].get());
            rb->scene->removeObject(rb);
            rb->scene = nullptr;
        }

        output = Amino::newClassPtr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>(input);
    }

    // Constraint input
    void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Ptr<Constrain::Constraint>& input, Amino::Ptr<Constrain::Constraint>& output)
    {
        if (input->scene) {
            output = input;
            return;
        }

        auto* constr = const_cast<Constrain::Constraint*>(input.get());
        constr->scene = bullet_scene;
        bullet_scene->dynamicsWorld->addConstraint(constr->constraint, constr->disable_collision);
        output = input;
    }

    void remove_from_bullet_scene(const Amino::Ptr<Constrain::Constraint>& input, Amino::Ptr<Constrain::Constraint>& output)
    {
        if (!input->scene) {
            output = input;
            return;
        }

        auto* constr = const_cast<Constrain::Constraint*>(input.get());
        constr->scene->dynamicsWorld->removeConstraint(constr->constraint);
        constr->scene = nullptr;
        output = input;
    }

    void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Array<Amino::Ptr<Constrain::Constraint>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<Constrain::Constraint>>>& output)
    {
        for (int i = 0; i < input.size(); i++) {
            if (input[i]->scene)
                continue;

            auto* constr = const_cast<Constrain::Constraint*>(input[i].get());
            constr->scene = bullet_scene;
            bullet_scene->dynamicsWorld->addConstraint(constr->constraint, constr->disable_collision);
        }

        output = Amino::newClassPtr<Amino::Array<Amino::Ptr<Constrain::Constraint>>>(input);
    }

    void remove_from_bullet_scene(const Amino::Array<Amino::Ptr<Constrain::Constraint>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<Constrain::Constraint>>>& output)
    {

        for (int i = 0; i < input.size(); i++) {
            if (!input[i]->scene)
                continue;

            auto* constr = const_cast<Constrain::Constraint*>(input[i].get());
            constr->scene->dynamicsWorld->removeConstraint(constr->constraint);
            constr->scene = nullptr;
        }

        output = Amino::newClassPtr<Amino::Array<Amino::Ptr<Constrain::Constraint>>>(input);
    }

    namespace RBD {
        void refresh_rigid_body_proxy(const Amino::Ptr<RigidBody>& rigid_body, Amino::Ptr<RigidBody>& out_rigid_body)
        {
            if (rigid_body->outdated_proxy) {
                auto* rb = const_cast<RigidBody*>(rigid_body.get());
                rb->outdated_proxy = false;
                if (rb->scene)
                    rb->scene->dynamicsWorld->refreshBroadphaseProxy(rb->body);
            }

            out_rigid_body = rigid_body;
        }

        void refresh_rigid_body_proxy(const Amino::Array<Amino::Ptr<RigidBody>>& rigid_body, Amino::Ptr<Amino::Array<Amino::Ptr<RigidBody>>>& out_rigid_body)
        {
            for (int i = 0; i < rigid_body.size(); i++) {
                if (rigid_body[i]->outdated_proxy) {
                    auto* rb = const_cast<RigidBody*>(rigid_body[i].get());
                    rb->outdated_proxy = false;
                    if (rb->scene)
                        rb->scene->dynamicsWorld->refreshBroadphaseProxy(rb->body);
                }
            }

            out_rigid_body = Amino::newClassPtr<Amino::Array<Amino::Ptr<RigidBody>>>(rigid_body);
        }
    }

} // Bullet