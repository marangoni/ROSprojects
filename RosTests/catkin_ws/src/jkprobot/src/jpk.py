#! /usr/bin/env python
# test
# Node da placa jokenPo - jpk
# Recebe as informações do teclado e envia para o arduino serial

import rospy
from jkprobot.msg import Ardubot #Import Person message from the ardubot package

rospy.init_node('jkp_robot_node')
pub = rospy.Publisher('/servo_move', Ardubot, queue_size=1) #Create a Publisher that will publish in the /servo_move topic
rate = rospy.Rate(2)

ardubot = Ardubot() #Create a Ardubot message object
ardubot.base_deg = 60 # base
ardubot.waist_deg = 120 # cintura
ardubot.shoulder_deg = 60 # ombro

while not rospy.is_shutdown(): 
  pub.publish(ardubot) #Publish the message into the defined topic /servo_move
  rate.sleep()