cmake_minimum_required(VERSION 3.10)

project(find_package_boost)

find_package(Boost COMPONENTS system filesystem REQUIRED)

add_executable(${PROJECT_NAME}
    main.cpp
)
target_link_libraries(${PROJECT_NAME}
    Boost::filesystem
)

install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
)
