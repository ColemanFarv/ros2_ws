import rclpy
from rclpy.node import Node
from moveit_ros_planning_interface._moveit_move_group_interface import MoveGroupInterface

class PoseHandler(Node):
    def __init__(self):
        super().__init__('pose_handler')
        self.move_group = MoveGroupInterface("arm", "robot_description")

    def go_to_pose(self, pose):
        self.move_group.set_pose_target(pose)
        plan = self.move_group.go(wait=True)
        self.move_group.stop()
        self.move_group.clear_pose_targets()

def main(args=None):
    rclpy.init(args=args)
    pose_handler = PoseHandler()
    # Example: Define your pose here and call go_to_pose
    rclpy.spin(pose_handler)
    rclpy.shutdown()

if __name__ == '__main__':
    main()