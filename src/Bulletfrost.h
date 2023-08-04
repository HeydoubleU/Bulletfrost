
#ifndef BULLETFROST_H
#define BULLETFROST_H

#include "BulletfrostExport.h"
#include <Amino/Cpp/Annotate.h>
#include <Amino/Cpp/ClassDeclare.h>

#include <Amino/Core/String.h>
#include <Amino/Core/Any.h>
#include <Amino/Core/Ptr.h>
#include <Bifrost/Object/Object.h>
#include <Bifrost/Math/Types.h>

namespace Bullet {

    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL RigidBody;
    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL BulletScene;


    namespace Collision {
        class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL CollisionShape;

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



    namespace Constrain {
        class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL Constraint;

        BULLETFROST_DECL
            void constrain_fixed(
                const Amino::Ptr<RigidBody>& rigid_body_a, const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const Amino::Ptr<RigidBody>& rigid_body_b, const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const float& break_theshold AMINO_ANNOTATE("Amino::Port value=1000.0f"), Amino::Ptr<Constraint>& constraint
			)
			AMINO_ANNOTATE("Amino::Node");

        BULLETFROST_DECL
            void constrain_6dof_spring(
                const Amino::Ptr<RigidBody>& rigid_body_a, const Bifrost::Math::float3& pivot_a, const Bifrost::Math::float4& orient_a AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const Amino::Ptr<RigidBody>& rigid_body_b, const Bifrost::Math::float3& pivot_b, const Bifrost::Math::float4& orient_b AMINO_ANNOTATE("Amino::Port value={w:1.0f}"),
                const Bifrost::Math::float3& linear_spring_stiffness, const Bifrost::Math::float3& linear_spring_damp,
                const float& break_theshold AMINO_ANNOTATE("Amino::Port value=1000.0f"), Amino::Ptr<Constraint>& constraint
            )
            AMINO_ANNOTATE("Amino::Node");

    } // Constrain


    struct AMINO_ANNOTATE("Amino::Struct") RigidBodyData
    {
        Amino::Ptr<Collision::CollisionShape> collision_shape{Amino::PtrDefaultFlag{}};
        Bifrost::Math::float3 position;
        Bifrost::Math::float4 orientation;
        float mass;
        float friction;
        float restitution;
        Bifrost::Math::float3 linear_velocity;
        Bifrost::Math::float3 angular_velocity;
        float linear_damping;
        float angular_damping;
    };
    
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
        void set_collision_shapes(
            BulletScene& bullet_scene AMINO_ANNOTATE("Amino::InOut outName=out_bullet_scene"),
            const Amino::Array<Amino::Ptr<Collision::CollisionShape>>& collision_shapes AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true")
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void add_rigid_bodies(
            const BulletScene& bullet_scene,
            const Amino::Array<RigidBodyData>& rigid_body_data AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
            Amino::Ptr<Amino::Array<Amino::Ptr<RigidBody>>>& rigid_bodies
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void create_rigid_body(const RigidBodyData& rigid_body_data, Amino::Ptr<RigidBody>& rigid_body)
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void remove_rigid_bodies(
            BulletScene& bullet_scene AMINO_ANNOTATE("Amino::InOut outName=out_bullet_scene"),
            const Amino::Array<Amino::Ptr<RigidBody>>& rigid_bodies
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void rigid_body_transform(
            const RigidBody& rigid_body,
            Bifrost::Math::float3& position,
            Bifrost::Math::float4& orientation
        )
        AMINO_ANNOTATE("Amino::Node");

} // Bullet

AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::Collision::CollisionShape);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::Constrain::Constraint);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::BulletScene);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::RigidBody);

#endif