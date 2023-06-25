#!/usr/bin/env python3.8

# Codigo para:
# 1) Carregar a GUI de controle baseada no arquivo ros_gui.kv
# 2) Definir as funcoes relacionadas aos controles da gui
# 3) Criar o nó "/control_gui"
# 4) Publicar o comando no tópico "/button"

import rospy
from std_msgs.msg import Bool
from kivymd.app import MDApp
from kivy.lang import Builder
from arduino_control_tutorials.msg import Ardubot

class TutorialApp(MDApp):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

        self.slider_base_angle = 90
        self.slider_waist_angle = 90
        self.slider_shoulder_angle = 90

        self.screen = Builder.load_file('ros_gui.kv')

    def build(self, *args):
        return self.screen
    
    def my_function(self, *args):
        print('Botao move pressionado!')

        self.screen.ids.my_label.text = 'Botao pressionado'
        
        msg = Ardubot() #Create a Ardubot message object
        msg.base_deg = self.slider_base_angle # base
        msg.waist_deg = self.slider_waist_angle # cintura
        msg.shoulder_deg = self.slider_shoulder_angle # ombro

        pub.publish(msg)

    def go_initial(self, *args):
        msg = Ardubot() #Create a Ardubot message object
        msg.base_deg = 0 # base
        msg.waist_deg = 0 # cintura
        msg.shoulder_deg = 0 # ombro
        print('Going to initial position...')

        pub.publish(msg)

    
    def go_final(self, *args):
        msg = Ardubot() #Create a Ardubot message object
        msg.base_deg = 180 # base
        msg.waist_deg = 180 # cintura
        msg.shoulder_deg = 180 # ombro
                   
        print('Going to final position...')
        pub.publish(msg)
    

    def slider_base_function(self, slider_base_value):
        self.slider_base_angle = int(slider_base_value)
        #print(self.slider_base_angle) 

    def slider_waist_function(self, slider_waist_value):
        self.slider_waist_angle = int(slider_waist_value)
        #print(self.slider_waist_angle)

    def slider_shoulder_function(self, slider_shoulder_value):
        self.slider_shoulder_angle = int(slider_shoulder_value)
        #print(self.slider_shoulder_angle)


if __name__=='__main__':

    pub = rospy.Publisher('/button', Ardubot, queue_size=1)

    rospy.init_node('control_gui',anonymous=True)

    TutorialApp().run()
    


