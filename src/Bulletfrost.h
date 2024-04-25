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
#include <Amino/Core/Array.h>
#include <Bifrost/Object/Object.h>
#include <Bifrost/Math/Types.h>


class btVector3;
class btQuaternion;
class btTransform;
class btTypedConstraint;
class btRigidBody;
class btCollisionObject;
class btCollisionShape;
class btTriangleMesh;
class btTriangleIndexVertexArray;


btVector3 convertV3(const Bifrost::Math::float3& vec);
Bifrost::Math::float3 convertV3(const btVector3 vec);
btQuaternion convertQuat(const Bifrost::Math::float4 vec);
Bifrost::Math::float4 convertQuat(const btQuaternion vec);


// Classes, enums, and structs
namespace Bullet {

    namespace Collision {

        enum class AMINO_ANNOTATE("Amino::Enum") MeshConstructor : int {
            AutoCompound = 0,
            GImpact = 1,
            BVH = 2
        };

        enum class AMINO_ANNOTATE("Amino::Enum") ShapeType : int {
            Empty = 0,
            Plane = 1,
            Box = 2,
            Sphere = 3,
            PointCloud = 4,
            Mesh = 5,
            MeshBVH = 6,
            Compound = 7
        };

        struct MeshData  // not for use in graph
        {
            btTriangleIndexVertexArray* btmesh = nullptr;
            int num_tri;
            int num_vert;
            int* fv;
            float* pp;

            MeshData(int num_tri, int num_verts);

            MeshData(const MeshData& input);

            ~MeshData();
        };

        class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL CollisionShape {
        public:
            btCollisionShape* shape;
            MeshData* mesh = nullptr;
            Amino::Array<Amino::Ptr<CollisionShape>> child_shapes;
            ShapeType type;
            bool dynamic = false;
            bool is_copy = false; // for debug

            //btTriangleMesh* copyMesh(btTriangleMesh * in_mesh);

            CollisionShape();

            CollisionShape(const CollisionShape & input);

            CollisionShape(btCollisionShape * shape, ShapeType type, MeshData* mesh = nullptr) : shape(shape), type(type), mesh(mesh) {}

            CollisionShape(btCollisionShape* shape, ShapeType type, Amino::Array<Amino::Ptr<CollisionShape>> child_shapes) : shape(shape), type(type), child_shapes(child_shapes) {}

            ~CollisionShape();

            void setChildTransform(int index, Bifrost::Math::float3 position, Bifrost::Math::float4 orientation);
        };
    } // Collision
    ;

    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL BulletScene;

    namespace RBD {

        struct AMINO_ANNOTATE("Amino::Struct") PhysicalMaterial
        {
            float mass;
            float friction;
            float restitution;
            float linear_damping;
            float angular_damping;
        };

        enum class AMINO_ANNOTATE("Amino::Enum") RigidBodyMode : int {
                Dynamic = 0,
                Kinematic = 1,
                Static = 2
        };

        struct AMINO_ANNOTATE("Amino::Struct") RigidBodyData
        {
            RigidBodyMode mode;
            Amino::Ptr<Collision::CollisionShape> collision_shape{Amino::PtrDefaultFlag{}};
            Bifrost::Math::float3 position;
            Bifrost::Math::float4 orientation;
            Bifrost::Math::float3 linear_velocity;
            Bifrost::Math::float3 angular_velocity;
            PhysicalMaterial physical_material;
        };

        class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL RigidBody {
        public:
            btCollisionObject* body;
            btRigidBody* rb = nullptr;
            Amino::Ptr<BulletScene> scene = nullptr;
            Amino::Ptr<Collision::CollisionShape> collision_shape;
            PhysicalMaterial phy_mat;
            RigidBodyMode mode;
            bool is_default = false;
            bool is_copy = false; // for debugging
            bool outdated_proxy = false;

            void setMode(RigidBodyMode new_mode);

            void bodyFromData(const RigidBodyData & rb_data);

            RigidBody() {
                auto rb_data = RigidBodyData();
                rb_data.orientation.w = 1;
                bodyFromData(rb_data);
                is_default = true;
            }

            RigidBody(const RigidBodyData & rb_data) {
                bodyFromData(rb_data);
            }

            RigidBody(const RigidBodyData & rb_data, const Amino::Ptr<BulletScene>& in_scene);

            RigidBody(const RigidBody & input); // Copy Constructor not thread safe

            ~RigidBody();

            void getData(RigidBodyData& rb_data) const;

            RigidBodyData getData() const {
                auto rb_data = RigidBodyData();
                getData(rb_data);
                return rb_data;
            }
        };

    }

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
            Amino::Ptr<BulletScene> scene = nullptr;
            ConstraintType type;
            bool disable_collision = false;
            btRigidBody* world_empty = nullptr;
            Bifrost::Math::float3 init_pos_a;
            Bifrost::Math::float4 init_orient_a;
            Bifrost::Math::float3 init_pos_b;
            Bifrost::Math::float4 init_orient_b;

            Constraint() : type(ConstraintType::Fixed) {}

            Constraint(const Constraint& input);

            Constraint(
                const ConstraintType& type, btRigidBody* rb_a, btRigidBody* rb_b,
                Bifrost::Math::float3 pivot_a, Bifrost::Math::float4 orient_a, Bifrost::Math::float3 pivot_b, Bifrost::Math::float4 orient_b
            );

            ~Constraint();

            void setFrames(Bifrost::Math::float3 pivot_a, Bifrost::Math::float4 orient_a, Bifrost::Math::float3 pivot_b, Bifrost::Math::float4 orient_b) const;

        };

    } // Constrain

} // Bullet


// Operators
namespace Bullet {
    
    BULLETFROST_DECL
        void create_bullet_scene(Amino::Ptr<BulletScene>& bullet_scene)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void set_gravity(const Amino::Ptr<BulletScene>& bullet_scene,
            const Bifrost::Math::float3& gravity AMINO_ANNOTATE("Amino::Port value={y:-9.81f}"),
            Amino::Ptr<BulletScene>& out_bullet_scene
        )
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void step_simulation(const Amino::Ptr<BulletScene>& bullet_scene,
            const float delta_time AMINO_ANNOTATE("Amino::Port value=0.02f"),
            Amino::Ptr<BulletScene>& out_bullet_scene
        )
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}, {documentation, ../docs/step_simulation.md}]");


    // Add/remove from scene
    BULLETFROST_DECL
        void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const RBD::RigidBodyData& input, Amino::Ptr<RBD::RigidBody>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Array<RBD::RigidBodyData>& input, Amino::Ptr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Ptr<RBD::RigidBody>& input, Amino::Ptr<RBD::RigidBody>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void remove_from_bullet_scene(const Amino::Ptr<RBD::RigidBody>& input, Amino::Ptr<RBD::RigidBody>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Array<Amino::Ptr<RBD::RigidBody>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void remove_from_bullet_scene(const Amino::Array<Amino::Ptr<RBD::RigidBody>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<RBD::RigidBody>>>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Ptr<Constrain::Constraint>& input, Amino::Ptr<Constrain::Constraint>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void remove_from_bullet_scene(const Amino::Ptr<Constrain::Constraint>& input, Amino::Ptr<Constrain::Constraint>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void add_to_bullet_scene(const Amino::Ptr<BulletScene>& bullet_scene, const Amino::Array<Amino::Ptr<Constrain::Constraint>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<Constrain::Constraint>>>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    BULLETFROST_DECL
        void remove_from_bullet_scene(const Amino::Array<Amino::Ptr<Constrain::Constraint>>& input, Amino::Ptr<Amino::Array<Amino::Ptr<Constrain::Constraint>>>& output)
        AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");


    namespace RBD {
        BULLETFROST_DECL
            void refresh_rigid_body_proxy(const Amino::Ptr<RigidBody>& rigid_body, Amino::Ptr<RigidBody>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void refresh_rigid_body_proxy(const Amino::Array<Amino::Ptr<RigidBody>>& rigid_body, Amino::Ptr<Amino::Array<Amino::Ptr<RigidBody>>>& out_rigid_body)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");
    }

} // Bullet

AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::Collision::CollisionShape);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::Constrain::Constraint);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::BulletScene);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::RBD::RigidBody);

#endif