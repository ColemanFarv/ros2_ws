import rclpy
from pymycobot.mycobot import MyCobot
from rclpy.node import Node
from sensor_msgs.msg import JointState
import os
import time
import math

class MyCobotController(Node):
    def __init__(self):
        super().__init__("mycobot_controller")
        
        # Publisher to broadcast joint states
        self.publisher_ = self.create_publisher(JointState, 'joint_states', 10)
        
        # Subscriber to listen to joint state commands
        self.subscription = self.create_subscription(
            JointState,
            "joint_commands",
            self.listener_callback,
            10
        )
        
        # Detect and initialize the serial port
        self.robot_m5 = os.popen("ls /dev/ttyUSB*").readline()[:-1]
        self.robot_wio = os.popen("ls /dev/ttyACM*").readline()[:-1]
        if self.robot_m5:
            port = self.robot_m5
        else:
            port = self.robot_wio
        self.get_logger().info("port:%s, baud:%d" % (port, 115200))
        self.mc = MyCobot(port, 115200)
        time.sleep(0.05)
        self.mc.set_fresh_mode(1)
        time.sleep(0.05)
        
        # Create a timer to periodically publish joint states
        self.timer = self.create_timer(0.1, self.publish_joint_states)

    def listener_callback(self, msg):
        data_list = []
        for value in msg.position:
            radians_to_angles = round(math.degrees(value), 2)
            data_list.append(radians_to_angles)
            
        self.get_logger().info('Received joint command: {}'.format(data_list))
        self.mc.send_angles(data_list, 25)
    
    def publish_joint_states(self):
        joint_state = JointState()
        joint_state.header.stamp = self.get_clock().now().to_msg()
        joint_state.name = ["joint1", "joint2", "joint3", "joint4", "joint5", "joint6"]
        
        # Get the current angles from MyCobot
        angles = self.mc.get_angles()
        if angles:
            joint_state.position = [math.radians(angle) for angle in angles]
            self.publisher_.publish(joint_state)
            self.get_logger().info('Published joint states: {}'.format(angles))

def main(args=None):
    rclpy.init(args=args)
    mycobot_controller = MyCobotController()
    
    rclpy.spin(mycobot_controller)
    
    mycobot_controller.destroy_node()
    rclpy.shutdown()

if __name__ == "__main__":
    main()
