# cmake config
cmake_minimum_required(VERSION 3.4)
#SET( CMAKE_VERBOSE_MAKEFILE on )

# only test cmake 
set(project_name  HELLO)
macro(hello MESSAGE)
    message(${MESSAGE})
endmacro(hello)
hello("TEST: helloworld")
message(STATUS "SRC_LIST " ${SRC_LIST})
message(STATUS "PROJECT_BINARY_DIR: ${PROJECT_BINARY_DIR}")
message(STATUS "PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")
message(STATUS "${project_name}_SOURCE_DIR: ${${project_name}_SOURCE_DIR}")

# bulid hello project 
project (HELLO)

set(SRC_DIR_TREE  ./src)
set(LIB_SRC  ${SRC_DIR_TREE}/hello/hello.c)
set(SRC_LIST ${SRC_DIR_TREE}/main.c )

include_directories(${PROJECT_SOURCE_DIR}/src/hello)

add_library(libhello ${LIB_SRC})
add_executable(hello_bin ${SRC_LIST})

target_link_libraries(hello_bin libhello)
