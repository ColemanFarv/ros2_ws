# Example usage for documentation

add_executable(maybe_error maybe_error.cpp)
target_link_libraries(maybe_error fp project_options)

add_executable(no_discard no_discard.cpp)
target_link_libraries(no_discard fp project_options)

add_executable(result result.cpp)
target_link_libraries(result fp project_options)

add_executable(validate_in validate_in.cpp)
target_link_libraries(validate_in fp project_options)

add_executable(validate_range validate_range.cpp)
target_link_libraries(validate_range fp project_options)
