# SPDX-FileCopyrighrText: 2025 Hiromu Kiyokawa
# SPDX-License-Identifier: BSD-3-Clause

import rclpy
from rclpy.node import Node
from std_msgs.msg import Int32

rclpy.init()
node = Node("takler")
pub = node.create_publisher(Int32, "countup", 10)
n = 0


def cb():
    global x
    global a
    global b
    global n
    msg = Int32()
    if n <= 1:
        msg.data = n
        pub.publish(msg)
        n += 1
        return 
    a, b = 0, 1
    for _ in range(n - 1):
        a, b = b, a + b
    msg.data = b
    pub.publish(msg)
    n += 1
    return 

def main():
    node.create_timer(1.0, cb)
    rclpy.spin(node)
