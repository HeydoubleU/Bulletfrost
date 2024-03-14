file( GLOB_RECURSE ALL_EXAMPLE_FILES 
    ${CMAKE_CURRENT_SOURCE_DIR}/*.json
    ${CMAKE_CURRENT_SOURCE_DIR}/*.ma
    ${CMAKE_CURRENT_SOURCE_DIR}/*.png
    ${CMAKE_CURRENT_SOURCE_DIR}/*.bob
)

foreach( example_file ${ALL_EXAMPLE_FILES})
    file(RELATIVE_PATH RELATIVE_PATH_TO_FILE ${CMAKE_CURRENT_SOURCE_DIR} ${example_file})
    get_filename_component(FILE_DIR ${example_file} DIRECTORY)
    if(FILE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
        install(FILES ${example_file} DESTINATION ${BULLETFROST_INSTALL_DIR}/example_graphs/)
    else()
        get_filename_component(REL_DIR_COMPONENT ${RELATIVE_PATH_TO_FILE} DIRECTORY)
        install(FILES ${example_file} DESTINATION ${BULLETFROST_INSTALL_DIR}/example_graphs/${REL_DIR_COMPONENT})
    endif()
endforeach()
