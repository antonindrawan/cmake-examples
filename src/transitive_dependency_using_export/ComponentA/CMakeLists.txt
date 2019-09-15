project(ComponentA)

find_package(Boost 1.59 COMPONENTS filesystem REQUIRED)

add_library(${PROJECT_NAME} SHARED ComponentA.cpp)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}
)

# The dependency to boost is PUBLIC, which should be forwarded to the application(s) linking to ComponentB.
target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Boost::filesystem
)

install(
    TARGETS ${PROJECT_NAME}
    LIBRARY DESTINATION lib
)