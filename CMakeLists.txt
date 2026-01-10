cmake_minimum_required(VERSION 3.19)

set(CMAKE_POLICY_VERSION_MINIMUM "3.10")
set(CMAKE_WARN_DEPRECATED FALSE)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include("${CMAKE_CURRENT_LIST_DIR}/cmake/deps.cmake")

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(learndaxa 
    VERSION 1.0
    HOMEPAGE_URL https://github.com/learndaxa/tutorial-starting-point
)

file(GLOB_RECURSE SRCS ${PROJECT_SOURCE_DIR}/src/*.cpp)

message("src files:")
foreach(file ${SRCS})
    message(STATUS ${file})
endforeach()

add_executable(${PROJECT_NAME}
    ${SRCS}
)

target_include_directories(${PROJECT_NAME} 
    PUBLIC include
)

target_link_libraries(${PROJECT_NAME} 
    PRIVATE glfw
    PRIVATE daxa::daxa
)

