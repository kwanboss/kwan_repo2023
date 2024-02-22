#!/usr/bin/env python

import rospy
from sensor_msgs.msg import NavSatFix

def callback(data):
    # 获取经度、纬度值
    latitude = data.latitude
    longitude = data.longitude

    # 保存到文本文件中
    with open("gpscoordinates.txt", "a") as file:
        file.write(f"{longitude},{latitude},24,2,87.439697\n")
        # file.write(f"Latitude: {latitude}, Longitude: {longitude}\n")

def listener():
    rospy.init_node('gps_listener', anonymous=True)
    
    # 设置回调函数
    rospy.Subscriber('/novatel718d/pos', NavSatFix, callback)

    # 循环监听话题
    rospy.spin()

if __name__ == '__main__':
    listener()
