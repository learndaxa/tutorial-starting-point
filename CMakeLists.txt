cmake_minimum_required(VERSION 3.21)

project(learndaxa VERSION 1.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Fetches GLFW and Daxa via FetchContent (must come after project()).
include("${CMAKE_CURRENT_LIST_DIR}/cmake/deps.cmake")

file(GLOB_RECURSE SRCS ${PROJECT_SOURCE_DIR}/src/*.cpp)

add_executable(${PROJECT_NAME} ${SRCS})

target_link_libraries(${PROJECT_NAME} PRIVATE glfw daxa::daxa)
