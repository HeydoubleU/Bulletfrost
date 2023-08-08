/*
* This is the main module for Bulletfrost. It contains all class, enum, and struct declarations, as well as BulletScene related operators.
*/

#ifndef BULLETFROST_H
#define BULLETFROST_H
constexpr float BIG_FLOAT = 1e30f;
constexpr float PI = 3.14159265358979323846f;

#include "BulletfrostExport.h"
#include <Amino/Cpp/Annotate.h>
#include <Amino/Cpp/ClassDeclare.h>

#include <Amino/Core/String.h>
#include <Amino/Core/Any.h>
#include <Amino/Core/Ptr.h>
#include <Bifrost/Object/Object.h>
#include <Bifrost/Math/Types.h>


class btVector3;
class btQuaternion;
class btTransform;
class btTypedConstraint;
class btRigidBody;
class btCollisionShape;
class btTriangleMesh;


btVector3 convertV3(const Bifrost::Math::float3 vec);
Bifrost::Math::float3 convertV3(const btVector3 vec);
btQuaternion convertQuat(const Bifrost::Math::float4 vec);
Bifrost::Math::float4 convertQuat(const btQuaternion vec);


// Classes, enums, and structs
namespace Bullet {

    namespace Collision {
        class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL CollisionShape {
        public:
            btCollisionShape* shape;
            btTriangleMesh* mesh = nullptr;
            Amino::Array<Amino::Ptr<CollisionShape>> child_shapes;

            CollisionShape();

            CollisionShape(const CollisionShape& input) {
                // TODO: fix this copy constructor, it is problem but I don't think it will get called normally.
                shape = input.shape;
                mesh = input.mesh;
                child_shapes = input.child_shapes;
            }

            CollisionShape(btCollisionShape* shape, btTriangleMesh* mesh = nullptr) : shape(shape), mesh(mesh) {}

            CollisionShape(btCollisionShape* shape, Amino::Array<Amino::Ptr<CollisionShape>> child_shapes) : shape(shape), child_shapes(child_shapes) {}

            ~CollisionShape();

            void setChildTransform(int index, Bifrost::Math::float3 position, Bifrost::Math::float4 orientation);
        };
    } // Collision


    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL BulletScene;

    struct AMINO_ANNOTATE("Amino::Struct") PhysicalMaterial
    {
        float mass;
		float friction;
		float restitution;
        float linear_damping;
        float angular_damping;

        PhysicalMaterial() : mass(1.0f), friction(0.5f), restitution(0.5f), linear_damping(0.1f), angular_damping(0.1f) {}
	};

    struct AMINO_ANNOTATE("Amino::Struct") RigidBodyData
    {
        Amino::Ptr<Collision::CollisionShape> collision_shape{Amino::PtrDefaultFlag{}};
        Bifrost::Math::float3 position;
        Bifrost::Math::float4 orientation;
        Bifrost::Math::float3 linear_velocity;
        Bifrost::Math::float3 angular_velocity;
        PhysicalMaterial physics_material;

        RigidBodyData() { orientation.w = 1.0f; }
    }; 

    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL RigidBody {
    public:
        btRigidBody* body;
        BulletScene* scene = nullptr;
        Amino::Ptr<Collision::CollisionShape> collision_shape;
        PhysicalMaterial phy_mat;
        bool is_copy = false; // for debugging

        void bodyFromData(const RigidBodyData& rb_data);

        RigidBody() {
            bodyFromData(RigidBodyData());
        }

        RigidBody(const RigidBodyData & rb_data) {
            bodyFromData(rb_data);
        }

        RigidBody(const RigidBodyData & rb_data, const BulletScene & in_scene);

        RigidBody(const RigidBody& input); // Copy Constructor not thread safe

        ~RigidBody();

        void setDamping(float lin_damp, float ang_damp);

        void setFriction(float friction);

        void setRestitution(float restitution);

        void setPhysicsMaterial(const PhysicalMaterial& mat);
    };


    namespace Constrain {

        struct AMINO_ANNOTATE("Amino::Struct") Limits
        {
            Bifrost::Math::bool3 enable;
            Bifrost::Math::float3 max;
            Bifrost::Math::float3 min;
        };

        struct AMINO_ANNOTATE("Amino::Struct") Motors
        {
            Bifrost::Math::float3 force;
            Bifrost::Math::float3 velocity;
            Bifrost::Math::bool3 servo;
            Bifrost::Math::float3 target;
        };

        enum class AMINO_ANNOTATE("Amino::Enum") ConstraintType : int
        {
            Fixed = 0,
            Point = 1,
            Hinge = 2,
            Cone = 3,
            Slider = 4,
            SixDOF = 5,
            SixDOFMotorized = 6,
        };

        class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL Constraint {
        public:
            btTypedConstraint* constraint = nullptr;
            BulletScene* scene = nullptr;
            ConstraintType type;
            Bifrost::Math::float3 pivot_a;
            Bifrost::Math::float3 pivot_b;
            Bifrost::Math::float4 orient_a;
            Bifrost::Math::float4 orient_b;

            Constraint() : type(ConstraintType::Fixed) {}

            Constraint(const Constraint & input) : type(ConstraintType::Fixed) {}

            Constraint(
                Amino::Ptr<RigidBody> rb_a, Amino::Ptr<RigidBody> rb_b, const ConstraintType & type,
                Bifrost::Math::float3 pivot_a, Bifrost::Math::float3 pivot_b, Bifrost::Math::float4 orient_b, Bifrost::Math::float4 orient_a
            );

            ~Constraint();

        };

    } // Constrain

} // Bullet


// Operators
namespace Bullet {

    namespace Collision {

        BULLETFROST_DECL
            void plane_collision(
                const Bifrost::Math::float3& normal AMINO_ANNOTATE("Amino::Port value={x:0.0f, y:1.0f, z:0.0f}"),
                const float plane_constant,
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node");

        BULLETFROST_DECL
            void box_collision(
                const Bifrost::Math::float3& extents AMINO_ANNOTATE("Amino::Port value={x:0.5f, y:0.5f, z:0.5f}"),
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node");

        BULLETFROST_DECL
            void sphere_collision(
                const float radius AMINO_ANNOTATE("Amino::Port value=1.0f"),
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node");

        BULLETFROST_DECL
            void point_cloud_collision(
                const Amino::Array<Bifrost::Math::float3>& points,
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node");

        BULLETFROST_DECL
            void mesh_collision(
                const Amino::Array<Bifrost::Math::float3x3>& triangles,
                const bool use_bvh,
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node");

        BULLETFROST_DECL
            void compound_collision(
                const Amino::Array<Amino::Ptr<CollisionShape>>& child_shapes AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
                const Amino::Array<Bifrost::Math::float3>& translates AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
                const Amino::Array<Bifrost::Math::float4>& rotates AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node");

    } // Collision

    
    BULLETFROST_DECL
        void create_bullet_scene(Amino::Ptr<BulletScene>& bullet_scene)
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void set_gravity(
            BulletScene& bullet_scene AMINO_ANNOTATE("Amino::InOut outName=out_bullet_scene"),
            const Bifrost::Math::float3& gravity AMINO_ANNOTATE("Amino::Port value={y:-9.81f}")
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void step_simulation(
            BulletScene& bullet_scene AMINO_ANNOTATE("Amino::InOut outName=out_bullet_scene"),
            const float delta_time AMINO_ANNOTATE("Amino::Port value=0.02f")
        )
        AMINO_ANNOTATE("Amino::Node");  

    BULLETFROST_DECL
        void add_rigid_bodies(
            const BulletScene& bullet_scene,
            const Amino::Array<RigidBodyData>& rigid_body_data AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
            Amino::Ptr<Amino::Array<Amino::Ptr<RigidBody>>>& rigid_bodies
        )
        AMINO_ANNOTATE("Amino::Node");

} // Bullet

AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::Collision::CollisionShape);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::Constrain::Constraint);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::BulletScene);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::RigidBody);

#endif