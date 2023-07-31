
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
    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL GenericCollisionShape;
    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL RigidBody;
    class AMINO_ANNOTATE("Amino::Class") BULLETFROST_DECL BulletScene;
    

    BULLETFROST_DECL
        void create_bullet_scene(Amino::Ptr<BulletScene>& bullet_scene)
            AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void set_gravity(
            BulletScene& bullet_scene AMINO_ANNOTATE("Amino::InOut outName=out_bullet_scene"),
            const Bifrost::Math::float3& gravity AMINO_ANNOTATE("Amino::Port value={x:0.0f, y:-9.81f, z:0.0f}")
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void step_simulation(
            BulletScene& bullet_scene AMINO_ANNOTATE("Amino::InOut outName=out_bullet_scene"),
            const float delta_time AMINO_ANNOTATE("Amino::Port value=0.02f")
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void amongus(
            const BulletScene& bullet_scene,
            int& output
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void plane_collision(
            const Bifrost::Math::float3& normal AMINO_ANNOTATE("Amino::Port value={x:0.0f, y:1.0f, z:0.0f}"),
            const float plane_constant,
            Amino::Ptr<GenericCollisionShape>& collision_shape
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void box_collision(
            const Bifrost::Math::float3& extents AMINO_ANNOTATE("Amino::Port value={x:0.5f, y:0.5f, z:0.5f}"),
            Amino::Ptr<GenericCollisionShape>& collision_shape
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void sphere_collision(
	        const float radius AMINO_ANNOTATE("Amino::Port value=1.0f"),
            Amino::Ptr<GenericCollisionShape>& collision_shape
	    )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void point_cloud_collision(
            const Amino::Array<Bifrost::Math::float3>& points,
            Amino::Ptr<GenericCollisionShape>& collision_shape
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void mesh_collision(
            const Amino::Array<Bifrost::Math::float3x3>& triangles,
            const bool use_bvh,
            Amino::Ptr<GenericCollisionShape>& collision_shape
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void compound_collision(
            const Amino::Array<Amino::Ptr<GenericCollisionShape>>& child_shapes AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
            const Amino::Array<Bifrost::Math::float3>& translates AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
            const Amino::Array<Bifrost::Math::float4>& rotates AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
            Amino::Ptr<GenericCollisionShape>& collision_shape
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void create_rigid_body(
            const Amino::Ptr<GenericCollisionShape>& collision_shape,
            const Bifrost::Math::float3& position,
            const Bifrost::Math::float4& orientation AMINO_ANNOTATE("Amino::Port value={x:0.0f, y:0.0f, z:0.0f, w:1.0f}"),
            const float mass AMINO_ANNOTATE("Amino::Port value=1.0f"),
            const float friction AMINO_ANNOTATE("Amino::Port value=0.5f"),
            const float restitution AMINO_ANNOTATE("Amino::Port value=0.5f"),
            Amino::Ptr<RigidBody>& rigid_body
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void add_rigid_bodies(
            BulletScene& bullet_scene AMINO_ANNOTATE("Amino::InOut outName=out_bullet_scene"),
            const Amino::Array<Amino::Ptr<RigidBody>>& rigid_bodies AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true")
        )
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void get_rigid_body_transform(const RigidBody& rigid_body, Bifrost::Math::float3& position, Bifrost::Math::float4& orientation)
        AMINO_ANNOTATE("Amino::Node");

    BULLETFROST_DECL
        void get_rigid_bodies(
            const BulletScene& bullet_scene,
            Amino::Ptr<Amino::Array<Amino::Ptr<RigidBody>>>& rigid_bodies
        )
        AMINO_ANNOTATE("Amino::Node");

} // namespace Bullet

AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::GenericCollisionShape);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::RigidBody);
AMINO_DECLARE_DEFAULT_CLASS(BULLETFROST_DECL, Bullet::BulletScene);

#endif