project(ComponentB VERSION 1.0 LANGUAGES CXX)

add_library(${PROJECT_NAME} STATIC ComponentB.cpp)

target_include_directories(${PROJECT_NAME}
    PUBLIC
         $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
)

install(
    TARGETS ${PROJECT_NAME}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)
