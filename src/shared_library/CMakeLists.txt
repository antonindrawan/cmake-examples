cmake_minimum_required(VERSION 3.10)

project(shared_library)

add_library(${PROJECT_NAME} SHARED
  Foo.cpp
)

install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
)
