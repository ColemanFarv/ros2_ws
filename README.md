# Mycobot 280 with ROS2 Humble, ROS2 control and MoveIt2

This project involves controlling a Mycobot 280 robot using ROS 2, MoveIt!, and Gazebo simulation. The system allows for sending desired poses to the robot, launching ROS 2 control simulations, and running the robot in a real environment.

## Features

- **Mycobot 280 Control**: Control the Mycobot 280 robot using ROS 2.
- **MoveIt! Integration**: Use MoveIt! for planning and executing robot trajectories.
- **ROS 2 Control**: Manage robot hardware interfaces and controllers using ROS 2 control.
- **Gazebo Simulation**: Simulate the robot in a virtual environment using Gazebo.

## Usage

### 1. Gazebo, ros2_control and moveit2

```bash
# Launch the Mycobot Gazebo simulation
ros2 launch mycobot_gazebo mycobot_280_arduino_bringup_ros2_control_classic_gazebo.launch.py

# Launch the simulation move group
ros2 launch mycobot_moveit_config move_group.launch.py
```

### 2. Launching real robot with control and moveit2

```bash
# Launch the MoveIt! move group
ros2 launch mycobot_280_description move_group.launch.py
```

### 3. Giving a Desired Pose

Listens to [X, Y, Z] topic and sends the desire pose to moveit2:

```bash
# Launch the MoveIt! test trajectory
ros2 launch moveit2_scripts test_trajectory.launch.py
```

# Experimental instructions
