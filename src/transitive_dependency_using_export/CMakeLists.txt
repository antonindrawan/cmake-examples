project(transitive_dependency_using_export)

#[[
    GIVEN
        An app depends on ComponentA (a shared library)
        ComponentA depends on Boost shared libraries
        ComponentA depends on ComponentB (static library)
    WHEN
        The app uses ComponentA
    THEN
        It should be sufficient to use find_package(ComponentA) and link the app to ComponentB.
        There should be no need to link it to ComponentB.
        This means that the app is indirectly dependent on Component B.
]]

add_subdirectory(App)
add_subdirectory(ComponentA)
add_subdirectory(ComponentB)