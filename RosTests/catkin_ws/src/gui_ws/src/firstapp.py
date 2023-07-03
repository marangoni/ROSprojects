#!/usr/bin/env python3.8

import rospy
from kivymd.app import MDApp
from kivy.lang import Builder
#from kivy_garden.cefpython import CEFBrowser

class TutorialApp(MDApp):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

        self.screen = Builder.load_file('ros_gui.kv')

    def build(self, *args):
        return self.screen
    
        
if __name__=='__main__':

    rospy.init_node('simple_gui',anonymous=True)

    TutorialApp().run()