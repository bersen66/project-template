cmake_minimum_required(VERSION 3.5)

# change project name he
project(template)

#specify language standard
set(CMAKE_CXX_STANDARD 20)

# support language servers 
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# tell CMake to search modules in binary dir
# conan generated configs are placed there
set(CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR})

# making boost available to link
include(cmake/setup_boost.cmake)

# include path from root of project
# makes easier to manage 
include_directories(${PROJECT_SOURCE_DIR})

# manage sources in template folder.
# all of those sources #include paths will begin with <template/....>
add_subdirectory(template) 

