#include <btBulletDynamicsCommon.h>
#include "BulletCollision/Gimpact/btGImpactShape.h"
#include "BulletCollision/Gimpact/btCompoundFromGimpact.h"
#include "BulletCollision/CollisionShapes/btConvexPointCloudShape.h"
#include "CollisionOps.h"

namespace Bullet {

    namespace Collision {

        void plane_collision(const Bifrost::Math::float3& normal, const float plane_constant, Amino::Ptr<CollisionShape>& collision_shape)
        {
            auto* shape = new btStaticPlaneShape(convertV3(normal), plane_constant);
            collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::Plane);

        }


        void box_collision(const Bifrost::Math::float3& extents, Amino::Ptr<CollisionShape>& collision_shape) {

            auto* shape = new btBoxShape(convertV3(extents));
            collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::Box);

        }


        void sphere_collision(const float radius, Amino::Ptr<CollisionShape>& collision_shape) {

            auto* shape = new btSphereShape(radius);
            collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::Sphere);

        }


        void multisphere_collision(const Amino::Array<Bifrost::Math::float3>& positions, const Amino::Array<float>& radi, Amino::Ptr<CollisionShape>& collision_shape) {
            int count = std::min(positions.size(), radi.size());
            btVector3* p = new btVector3[count];
            float* r = new float[count];

            for (int i = 0; i < count; i++) {
                p[i] = convertV3(positions[i]);
                r[i] = radi[i];
            }
            auto* shape = new btMultiSphereShape(p, r, count);
            collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::MultiSphere);
        }


        void point_cloud_collision(const Amino::Array<Bifrost::Math::float3>& points, Amino::Ptr<CollisionShape>& collision_shape)
        {
            btConvexHullShape* shape = new btConvexHullShape();
            for (int i = 0; i < points.size(); i++) {
                shape->addPoint(convertV3(points[i]), false);
            }
            shape->recalcLocalAabb();
            shape->optimizeConvexHull(); // Are there situations where this shouldn't be called?

            collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::PointCloud);

        }


        void mesh_collision(const Amino::Array<Bifrost::Math::float3>& points, const Amino::Array<unsigned int>& face_vertex, const MeshConstructor constructor, const float auto_ray_depth, Amino::Ptr<CollisionShape>& collision_shape)
        {
            // Create Mesh =====================================================
            int fv_size = face_vertex.size();

            // Return if not triangles
            if (fv_size == 0 || fv_size % 3 != 0) {
				collision_shape = Amino::newClassPtr<CollisionShape>();
				return;
			}

            auto* mesh = new MeshData(fv_size / 3, points.size());

            // This copies the mesh data but it may be possible to use the array data pointers directly.
            for (int i = 0; i < points.size(); i++) {
                int x = i * 3;
                mesh->pp[x] = points[i].x;
                mesh->pp[x + 1] = points[i].y;
                mesh->pp[x + 2] = points[i].z;
            }

            for (int i = 0; i < fv_size; i++) {
                mesh->fv[i] = face_vertex[i];
            }


            // Create Shape =====================================================

            if (constructor == MeshConstructor::AutoCompound) // auto compound
            { // auto compound
                auto gshape = btGImpactMeshShape(mesh->btmesh);
                gshape.updateBound();  // probably not necessary
                auto* auto_comp = btCreateCompoundFromGimpactShape(&gshape, auto_ray_depth);

                // Create new compound shape that's usable with CollisionShape
                auto* shape = new btCompoundShape();
                auto children = Amino::Array<Amino::Ptr<CollisionShape>>();
                for (int i = 0; i < auto_comp->getNumChildShapes(); i++) {
                    shape->addChildShape(auto_comp->getChildTransform(i), auto_comp->getChildShape(i));
                    children.push_back(Amino::newClassPtr<CollisionShape>(auto_comp->getChildShape(i), ShapeType::Empty));
                }
                collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::Compound, children);

                // it seems btCreateCompoundFromGimpactShape returns a special compound shape that deletes its children in the deconstructor
                // my solution is to create a new shape above, assigning the children of the auto_comp to it. Is there a simpler solution?
                // after removing all it's children, auto_comp can safely be deleted. 
                for (int i = auto_comp->getNumChildShapes() - 1; i >= 0; i--)
                    auto_comp->removeChildShapeByIndex(i);
                delete auto_comp;
                delete mesh;
            }  
            else if (constructor == MeshConstructor::GImpact)
            {  // gimpact
                auto* shape = new btGImpactMeshShape(mesh->btmesh);
                collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::Mesh, mesh);
                shape->updateBound();
            }

            else 
            {  // BVH
                auto* shape = new btBvhTriangleMeshShape(mesh->btmesh, true);
                collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::MeshBVH, mesh);
            }
        }


        void compound_collision(
            const Amino::Array<Amino::Ptr<CollisionShape>>& child_shapes, const Amino::Array<Bifrost::Math::float3>& translates, const Amino::Array<Bifrost::Math::float4>& rotates,
            Amino::Ptr<CollisionShape>& collision_shape
        ) {

            int size = child_shapes.size();
            Bifrost::Math::float3 def_t; def_t.x = 0; def_t.y = 0; def_t.z = 0;
            Bifrost::Math::float4 def_r; def_r.x = 0; def_r.y = 0; def_r.z = 0; def_r.w = 1;
            auto trans = Amino::Array<Bifrost::Math::float3>(translates);
            auto rots = Amino::Array<Bifrost::Math::float4>(rotates);
            trans.resize(size, def_t);
            rots.resize(size, def_r);

            btCompoundShape* shape = new btCompoundShape();
            for (int i = 0; i < size; i++) {
                shape->addChildShape(btTransform(convertQuat(rots[i]), convertV3(trans[i])), child_shapes[i]->shape);
            }

            collision_shape = Amino::newClassPtr<CollisionShape>(shape, ShapeType::Compound, child_shapes);

        }

        void set_collision_shape_margin(CollisionShape& collision_shape, const float& margin)
        {
            collision_shape.shape->setMargin(margin);
        }

        void set_collision_shape_scale(CollisionShape& collision_shape, const Bifrost::Math::float3& scale)
        {
            collision_shape.shape->setLocalScaling(convertV3(scale));
            if (collision_shape.type == ShapeType::Mesh) {
                ((btGImpactMeshShape*)collision_shape.shape)->updateBound();
            }            
        }

        void get_collision_shape_scale(const Amino::Ptr<CollisionShape>& collision_shape, Bifrost::Math::float3& scale)
        {
            scale = convertV3(collision_shape->shape->getLocalScaling());
        }

        void set_collision_dynamic(CollisionShape& collision_shape, bool dynamic)
        {
            collision_shape.dynamic = dynamic;
        }

        void get_collision_dynamic(const Amino::Ptr<CollisionShape>& collision_shape, bool& dynamic)
        {
            dynamic = collision_shape->dynamic;
        }

        void is_copy(const CollisionShape& object, bool& is_copy) {
            is_copy = object.is_copy;
        }

        void get_shape_type(const CollisionShape& object, ShapeType& type) {
            type = object.type;
        }

    } // Collision

} // Bullet