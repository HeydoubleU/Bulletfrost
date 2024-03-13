file( GLOB ALL_ICON_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.svg )

set( bulletfrost_icons )
foreach( icon_file ${ALL_ICON_FILES})
   get_filename_component( basename ${icon_file} NAME )
   list( APPEND bulletfrost_icons ${basename})
endforeach()

install(FILES ${bulletfrost_icons}
    DESTINATION "${BULLETFROST_INSTALL_DIR}/icons")