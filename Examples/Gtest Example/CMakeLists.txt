cmake_minimum_required(VERSION 3.12)

set(ltest)

project(ltest C CXX)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

enable_testing()

add_subdirectory(extlibs/googletest)

set(Sources main.cpp)

add_library(ltest STATIC ${Sources})

add_subdirectory(test)