cmake_minimum_required(VERSION 3.10)

project(cmake-examples)

# Use GNU install dirs by default. The CMAKE_INSTALL_<dir> can be overriden from cmake if needed.
include(GNUInstallDirs)

# Set the rpath values
set(CMAKE_INSTALL_RPATH "$ORIGIN/../${CMAKE_INSTALL_LIBDIR}")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

# Don't export all symbols by default
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(VISIBILITY_INLINES_HIDDEN 1)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

add_subdirectory(find_package_boost)
add_subdirectory(shared_library)
add_subdirectory(transitive_dependency_using_export)
