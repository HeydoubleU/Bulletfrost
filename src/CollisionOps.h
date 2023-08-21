/*
* Operators for creating and modifying CollisionShape objects in the graph.
* In the future this will also include collision queries.
*/

#include "Bulletfrost.h"


namespace Bullet {

    namespace Collision {

        BULLETFROST_DECL
            void plane_collision(
                const Bifrost::Math::float3& normal AMINO_ANNOTATE("Amino::Port value={x:0.0f, y:1.0f, z:0.0f}"),
                const float plane_constant,
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void box_collision(
                const Bifrost::Math::float3& extents AMINO_ANNOTATE("Amino::Port value={x:0.5f, y:0.5f, z:0.5f}"),
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void sphere_collision(
                const float radius AMINO_ANNOTATE("Amino::Port value=1.0f"),
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void point_cloud_collision(
                const Amino::Array<Bifrost::Math::float3>& points,
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void mesh_collision(const Amino::Array<Bifrost::Math::float3>& points, const Amino::Array<unsigned int>& face_vertex, const MeshConstructor constructor, const float depth, Amino::Ptr<CollisionShape>& collision_shape)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void compound_collision(
                const Amino::Array<Amino::Ptr<CollisionShape>>& child_shapes AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
                const Amino::Array<Bifrost::Math::float3>& translates AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
                const Amino::Array<Bifrost::Math::float4>& rotates AMINO_ANNOTATE("Amino::Port isDefaultFanIn=true"),
                Amino::Ptr<CollisionShape>& collision_shape
            )
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_collision_shape_margin(CollisionShape& collision_shape AMINO_ANNOTATE("Amino::InOut outName=out_collision_shape"), const float& margin)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_collision_shape_scale(CollisionShape& collision_shape AMINO_ANNOTATE("Amino::InOut outName=out_collision_shape"), const Bifrost::Math::float3& scale)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_collision_shape_scale(const Amino::Ptr<CollisionShape>& collision_shape, Bifrost::Math::float3& scale)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void set_collision_dynamic(CollisionShape& collision_shape AMINO_ANNOTATE("Amino::InOut outName=out_collision_shape"), bool dynamic)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void get_collision_dynamic(const Amino::Ptr<CollisionShape>& collision_shape, bool& dynamic)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

        BULLETFROST_DECL
            void is_copy(const CollisionShape& object, bool& is_copy)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");
        BULLETFROST_DECL
            void get_shape_type(const CollisionShape& object, ShapeType& type)
            AMINO_ANNOTATE("Amino::Node metadata=[{icon, ../icons/bullet_logo.svg}]");

    } // Collision

} // Bullet