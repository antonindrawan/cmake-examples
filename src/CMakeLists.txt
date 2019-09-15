cmake_minimum_required(VERSION 3.10)

project(cmake-examples)

set(CMAKE_INSTALL_RPATH "$ORIGIN/../lib")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

add_subdirectory(find_package_boost)
add_subdirectory(shared_library)
add_subdirectory(transitive_dependency_using_export)
