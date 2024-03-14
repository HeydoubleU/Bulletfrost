file( GLOB ALL_MD_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.md )

set( bulletfrost_docs )
foreach( doc_file ${ALL_MD_FILES})
   get_filename_component( basename ${doc_file} NAME )
   list( APPEND bulletfrost_docs ${basename})
endforeach()

install(FILES ${bulletfrost_docs}
    DESTINATION "${BULLETFROST_INSTALL_DIR}/docs")