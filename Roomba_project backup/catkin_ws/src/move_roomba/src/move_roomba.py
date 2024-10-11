#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from roomba_control_class import RobotControl


roomba = RobotControl()

def callback(msg): 
    # Imprime as informaes da mensagem Twist recebida
    rospy.loginfo("Comando Twist recebido:")
    rospy.loginfo(f"Linear: x={msg.linear.x}, y={msg.linear.y}, z={msg.linear.z}")
    rospy.loginfo(f"Angular: x={msg.angular.x}, y={msg.angular.y}, z={msg.angular.z}")

    # Verifica se o valor de linear.x é diferente de 0
    if msg.linear.x > 0:
        rospy.loginfo("roomba para frente")
        #roomba.move_straight_time("forward",msg.linear.x,1)
    elif msg.linear.x <0:
        rospy.loginfo("roomba para trás")
        #roomba.move_straight_time("backward",msg.linear.x,1)
    else:
        rospy.loginfo("roomba parada ou movendo em outra direção")


# Inicializa o n ROS
# rospy.init_node('move_roomba')

# Cria o Subscriber que escuta o tpico /cmd_vel
sub = rospy.Subscriber('/cmd_vel', Twist, callback)

# Mantm o n em execução para processar as mensagens
rospy.spin()
