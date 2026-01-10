# install CPM 
set(CPM_SOURCE_CACHE "${CMAKE_CURRENT_SOURCE_DIR}/.cache/cpm" CACHE STRING "CPM cache path")
include("${CMAKE_CURRENT_SOURCE_DIR}/cmake/CPM.cmake")

CPMAddPackage(
    NAME            glfw
    GIT_REPOSITORY  https://github.com/glfw/glfw
    GIT_TAG         3.4
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
    OPTIONS         "BUILD_SHARED_LIBS OFF"
    OPTIONS         "GLFW_BUILD_EXAMPLES OFF"
    OPTIONS         "GLFW_BUILD_TESTS OFF"
    OPTIONS         "GLFW_BUILD_DOCS OFF"
    OPTIONS         "GLFW_VULKAN_STATIC OFF"
    OPTIONS         "GLFW_INSTALL OFF"
    OPTIONS         "GLFW_INCLUDE_NONE ON"
    SYSTEM          TRUE
)

CPMAddPackage(
    NAME            daxa
    GIT_REPOSITORY  https://github.com/Ipotrick/Daxa
    GIT_TAG         3.4
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
    OPTIONS         "BUILD_SHARED_LIBS OFF"
    OPTIONS         "DAXA_ENABLE_UTILS_MEM ON"
    OPTIONS         "DAXA_ENABLE_UTILS_TASK_GRAPH ON"
    SYSTEM          TRUE
)
