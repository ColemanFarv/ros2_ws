import rclpy
from pymycobot.mycobot import MyCobot
from rclpy.node import Node
from sensor_msgs.msg import JointState
import os
import time
import math

class SliderSubscriber(Node):
    def __init__(self):
        super().__init__("control_slider")
        
        # Initialize MyCobot connection
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
        
        # Subscribe to joint states published by the actual robot
        self.subscription = self.create_subscription(
            JointState,
            "/joint_states",  # Update with the actual topic name from your robot
            self.listener_callback,
            10
        )
        
        # Initialize desired angles with default values
        self.desired_angles = [0, 0, 0, 0, 0, 0]

    def listener_callback(self, msg):
        # Print actual angles from robot
        current_angles = self.mc.get_angles()
        self.get_logger().info('Actual angles: {}'.format(current_angles))
        
        # Process desired angles received from GUI
        data_list = []
        for _, value in enumerate(msg.position):
            radians_to_angles = round(math.degrees(value), 2)
            data_list.append(radians_to_angles)
            
        self.desired_angles = data_list
        self.get_logger().info('Desired angles from GUI: {}'.format(self.desired_angles))

        # Command to desired angles
        self.mc.send_angles(self.desired_angles, 25)



def main(args=None):
    rclpy.init(args=args)
    slider_subscriber = SliderSubscriber()
    
    rclpy.spin(slider_subscriber)
    
    slider_subscriber.destroy_node()
    rclpy.shutdown()

if __name__ == "__main__":
    main()
