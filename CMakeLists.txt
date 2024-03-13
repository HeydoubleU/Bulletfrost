cmake_minimum_required(VERSION 3.17)

# BIFROST_LOCATION must be passed-in or defined by an environment variable.
# Passed-in on the CMake command line overrides the environemnt variable.
if( NOT BIFROST_LOCATION )
    if( DEFINED ENV{BIFROST_LOCATION} )
        set( BIFROST_LOCATION $ENV{BIFROST_LOCATION})
    else()
        message( FATAL_ERROR "Bifrost: BIFROST_LOCATION cmake variable must be defined.")
    endif()
endif()

# The INPUTS arg was deprecated in Bifrost 2.8. Will not compile without updating
option(USE_DEPRECATED_HEADER_PARSER_ARGS "Use old args deprecated after 2.8" OFF)

if( USE_DEPRECATED_HEADER_PARSER_ARGS )
    set(HEADER_FILE_ARG "INPUTS")
else()
    set(HEADER_FILE_ARG "HEADER_FILES")
endif()

# Project Name
project(
    Bulletfrost 
    VERSION 1.0.0
    LANGUAGES CXX
)

# Bifrost setup and utilities...
include(${BIFROST_LOCATION}/sdk/cmake/setup.cmake)

# Verbose CMake
set( CMAKE_VERBOSE_MAKEFILE TRUE)

# Find Bifrost
find_package(Bifrost REQUIRED SDK)

# Build from sources
add_subdirectory(src)
