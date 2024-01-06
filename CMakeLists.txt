cmake_minimum_required(VERSION 3.19)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(PROJECT_N learndaxa)
project(${PROJECT_N} VERSION 1.0)

file(GLOB_RECURSE SRCS ${PROJECT_SOURCE_DIR}/src/*.cpp)

message("src files:")
foreach(file ${SRCS})
        message(STATUS ${file})
endforeach()

add_executable(${PROJECT_N} ${SRCS})

target_include_directories(${PROJECT_N} PUBLIC include)

find_package(glfw3 CONFIG REQUIRED)
target_link_libraries(${PROJECT_N} PRIVATE glfw)

find_package(daxa CONFIG REQUIRED)
target_link_libraries(${PROJECT_N} PRIVATE daxa::daxa)