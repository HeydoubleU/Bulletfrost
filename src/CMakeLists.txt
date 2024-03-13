add_library( BulletfrostOps SHARED)

# Bullet libraries
find_package(Bullet CONFIG REQUIRED)
target_link_libraries(BulletfrostOps PRIVATE ${BULLET_LIBRARIES})

target_compile_definitions( BulletfrostOps PRIVATE BULLETFROST_BUILD_NODEDEF_DLL)
target_sources( BulletfrostOps PRIVATE Bulletfrost.cpp ConstrainOps.cpp RigidBodyOps.cpp CollisionOps.cpp)
target_link_libraries( BulletfrostOps PUBLIC Amino::Cpp )
target_link_libraries( BulletfrostOps PUBLIC Amino::Core )
target_link_libraries( BulletfrostOps PUBLIC Bifrost::Object )
bifrost_set_install_rpath(BulletfrostOps)
install( TARGETS BulletfrostOps DESTINATION lib )

# Generate and install the json files
set( headers_to_parse 
    Bulletfrost.h
    ConstrainOps.h
    RigidBodyOps.h
    CollisionOps.h
)

bifrost_header_parser( 
    BulletfrostJsonFiles  # Name of the target.
    "compounds"                 # Install dir - relative to install prefix.
    INCLUDE_DIRS    ${CMAKE_CURRENT_SOURCE_DIR}
    ${HEADER_FILE_ARG}      ${headers_to_parse})

# Create config json file to load the bifrost pack
set( CONFIG_PACK_VERSION "${PROJECT_VERSION}")
set( CONFIG_PACK_NAME "${PROJECT_NAME}")
set( CONFIG_SHARED_LIBS "./lib")
set( CONFIG_JSON_FILES "./compounds")
set( config_json ${CMAKE_BINARY_DIR}/${PROJECT_NAME}PackConfig.json )
configure_file(PackConfig.json.in ${config_json} )
install(FILES ${config_json} DESTINATION . )
