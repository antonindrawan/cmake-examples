cmake_minimum_required(VERSION 3.10)

project(cmake-examples)

# Set the rpath values
set(CMAKE_INSTALL_RPATH "$ORIGIN/../lib")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

# Don't export all symbols by default
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(VISIBILITY_INLINES_HIDDEN 1)

add_subdirectory(find_package_boost)
add_subdirectory(shared_library)
add_subdirectory(transitive_dependency_using_export)
