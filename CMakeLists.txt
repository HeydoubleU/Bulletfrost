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

# Project Name
project(
    Bulletfrost 
    VERSION 0.0.0
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
