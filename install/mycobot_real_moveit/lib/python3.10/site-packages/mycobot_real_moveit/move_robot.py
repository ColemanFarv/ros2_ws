import sys
import rclpy
from rclpy.node import Node
from moveit2 import MoveIt2Interface, PlanningComponent
from geometry_msgs.msg import PoseStamped

class MoveRobotNode(Node):
    def __init__(self):
        super().__init__('move_robot_node')
        self.moveit2 = MoveIt2Interface(node=self)
        self.moveit2.wait_for_planning_scene()
        self.planner = PlanningComponent("arm_group", self.moveit2)

    def move_to_pose(self, pose):
        self.planner.set_pose_target(pose)
        plan = self.planner.plan()
        self.planner.execute(plan)
        self.planner.clear_pose_targets()

def main(args=None):
    rclpy.init(args=args)
    node = MoveRobotNode()

    # Define the target pose
    target_pose = PoseStamped()
    target_pose.header.frame_id = "world"
    target_pose.pose.position.x = 0.4
    target_pose.pose.position.y = 0.0
    target_pose.pose.position.z = 0.5
    target_pose.pose.orientation.w = 1.0

    node.get_logger().info('Moving to target pose...')
    node.move_to_pose(target_pose)
    node.get_logger().info('Movement complete.')

    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()