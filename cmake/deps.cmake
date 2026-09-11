include(FetchContent)

# GLFW - Daxa only fetches GLFW for its own tests, so the app has to provide it.
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(GLFW_INSTALL OFF CACHE BOOL "" FORCE)
FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw
    GIT_TAG        3.4
    GIT_SHALLOW    TRUE
)
FetchContent_MakeAvailable(glfw)

# Daxa - the DAXA_ENABLE_UTILS_* options must be set before Daxa's CMakeLists.txt runs.
set(DAXA_ENABLE_UTILS_PIPELINE_MANAGER_GLSLANG ON)
set(DAXA_ENABLE_TESTS OFF)
set(DAXA_ENABLE_TOOLS OFF)
FetchContent_Declare(
    daxa
    GIT_REPOSITORY https://github.com/Ipotrick/Daxa
    GIT_TAG        master # tested with 984b8b833aca04530ea70371929c2e6f78a66b53, which is about 5 months after version 3.6
    GIT_SHALLOW    TRUE
)
FetchContent_MakeAvailable(daxa)
