project(ComponentA VERSION 1.0 LANGUAGES CXX)

find_package(Boost 1.59 COMPONENTS filesystem REQUIRED)

add_library(${PROJECT_NAME} SHARED ComponentA.cpp)

target_include_directories(${PROJECT_NAME}
    PUBLIC
         $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
)

# The dependency to boost is PRIVATE because Boost is an implementation detail of this component.
target_link_libraries(${PROJECT_NAME}
    PRIVATE
        Boost::filesystem
)

install(
    TARGETS ${PROJECT_NAME}
    LIBRARY DESTINATION lib
)