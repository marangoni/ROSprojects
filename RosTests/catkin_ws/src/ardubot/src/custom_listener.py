#!/usr/bin/env python
 
import rospy
from ardubot.msg import Person
 
def callback(data):
    rospy.loginfo("%s is the servo: %d" % (data.servo_name, data.deg))
 
def listener():
 
    rospy.init_node('custom_listener', anonymous=True)
    rospy.Subscriber("custom_chatter", Person , callback)
 
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__=='__main__':
    listener()
