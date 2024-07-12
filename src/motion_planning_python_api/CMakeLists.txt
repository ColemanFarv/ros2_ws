cmake_minimum_required(VERSION 3.5)
project(motion_planning_python_api)

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
# Add other find_package calls as needed

# Include directories
include_directories(include)

# Install Python scripts
install(PROGRAMS
  scripts/motion_planning_python_api_tutorial.py
  scripts/motion_planning_python_api_planning_scene.py
  DESTINATION lib/${PROJECT_NAME}
)

# Install other directories
install(DIRECTORY config launch
  DESTINATION share/${PROJECT_NAME}
)

# If you have executables, add them here
# add_executable(${PROJECT_NAME}_node src/main.cpp)
# ament_target_dependencies(${PROJECT_NAME}_node rclcpp std_msgs)
# install(TARGETS ${PROJECT_NAME}_node
#   DESTINATION lib/${PROJECT_NAME}
# )

ament_package()
