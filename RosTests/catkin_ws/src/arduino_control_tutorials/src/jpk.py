#! /usr/bin/env python

# Codigo para:
# 
# Criar o node da placa Arduino servos - /arduino_board
# Receber as informaçoe de comando da gui - topico /button e enviar para o arduino serial
# Reações aos comandos da GUI deverão ser programadas neste node

import rospy
from arduino_control_tutorials.msg import Ardubot 

# rotina chamada sempre que houver um novo comando for recebido
# Cria uma mensagem do tipo Ardubot - msg
# prepara essa mensagem para publicação - recebe os valores do comando e transpões para essa mensagem
# publica no tópico /servo_move - que é monitorado pelo nó rosserial rodando no arduino e faz os servos se moverem

def button_callback(data):
  
  #prepara a mensagem para publicação
  print('Data from /button received')
  msg = Ardubot()
  msg.base_deg = data.base_deg
  msg.waist_deg = data.waist_deg
  msg.shoulder_deg = data.shoulder_deg
  pub = rospy.Publisher('/servo_move', Ardubot, queue_size=1) #Create a Publisher that will publish in the /servo_move topic
  pub.publish(msg) #Publish the message into the defined topic /servo_move
  

# monitora o topico /button para verificar se houve algum comando 
# Se houver, chama a rotina button_callback
def listener():
  rospy.init_node('arduino_board')
  rospy.Subscriber("/button", Ardubot, button_callback)
  #rate = rospy.Rate(2
  rospy.spin()

# Enquanto o programa estiver rodando
# cria o nó /arduino_board
# monitora o topico /button para verificar se houve algum comando 

while not rospy.is_shutdown():
  listener()
  rospy.rate.sleep()