#!/usr/bin/env python
import time
import rospy
from math import pi, sin, cos, acos
import random
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState
"""
Topics To Write on:
type: std_msgs/Float64

/onshape/waist_position_controller/command
/onshape/elbow_position_controller/command
/onshape/shoulder_position_controller/command
/onshape/wrist_pitch_position_controller/command
/onshape/wrist_yaw_position_controller/command

"""

class onshapeJointMover(object):

    def __init__(self):
        rospy.init_node('jointmover_demo', anonymous=True)
        rospy.loginfo("Thangs5dof JointMover Initialising...")
        self.pub_onshape_waist_joint_position = rospy.Publisher('/onshape/waist_position_controller/command',
                                                            Float64,
                                                            queue_size=1)
        self.pub_onshape_elbow_joint_position = rospy.Publisher('/onshape/elbow_position_controller/command',
                                                             Float64,
                                                             queue_size=1)
        self.pub_onshape_wrist_pitch_joint_position = rospy.Publisher('/onshape/wrist_pitch_position_controller/command',
                                                           Float64,
                                                           queue_size=1)
        self.pub_onshape_wrist_yaw_joint_position = rospy.Publisher('/onshape/wrist_yaw_position_controller/command',
                                                           Float64,
                                                           queue_size=1)
        self.pub_onshape_shoulder_joint_position = rospy.Publisher('/onshape/shoulder_pitch_position_controller/command',
                                                           Float64,
                                                           queue_size=1)

        joint_states_topic_name = "/onshape/joint_states"
        rospy.Subscriber(joint_states_topic_name, JointState, self.onshape_joints_callback)
        onshape_joints_data = None
        while onshape_joints_data is None:
            try:
                onshape_joints_data = rospy.wait_for_message(joint_states_topic_name, JointState, timeout=5)
            except:
                rospy.logwarn("Time out " + str(joint_states_topic_name))
                pass

        self.onshape_joint_dictionary = dict(zip(onshape_joints_data.name, onshape_joints_data.position))

    def move_onshape_all_joints(self, awaist, ashoulder, aelbow, awrist_yaw, awrist_pitch):
        angle_waist = Float64()
        angle_waist.data = awaist
        angle_shoulder = Float64()
        angle_shoulder.data = ashoulder
        angle_elbow = Float64()
        angle_elbow.data = aelbow
        angle_wrist_yaw = Float64()
        angle_wrist_yaw.data = awrist_yaw
        angle_wrist_pitch = Float64()
        angle_wrist_pitch.data = awrist_pitch

        self.pub_onshape_waist_joint_position.publish(angle_waist)
        self.pub_onshape_shoulder_joint_position.publish(angle_shoulder)
        self.pub_onshape_elbow_joint_position.publish(angle_elbow)
        self.pub_onshape_wrist_pitch_joint_position.publish(angle_wrist_pitch)
        self.pub_onshape_wrist_yaw_joint_position.publish(angle_wrist_yaw)


    def move_onshape_waist_joint(self, position):
        """
        limits radians : lower="-1.57" upper="1.57"
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_onshape_waist_joint_position.publish(angle)

    def move_onshape_shoulder_joint(self, position):
        """
        limits radians : lower="-1.57" upper="1.57"
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_onshape_shoulder_joint_position.publish(angle)

    def move_onshape_elbow_joint(self, position):
        """
        Limits : ower="-1.57" upper="1.57"
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_onshape_elbow_joint_position.publish(angle)

    def move_onshape_wrist_pitch_joint(self, position):
        """
        Limits : ower="-1.57" upper="1.57"
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_onshape_wrist_pitch_joint_position.publish(angle)

    def move_onshape_wrist_yaw_joint(self, position):
        """
        Limits : ower="-1.57" upper="1.57"
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_onshape_wrist_yaw_joint_position.publish(angle)


    def onshape_joints_callback(self, msg):
        """
        sensor_msgs/JointState
        std_msgs/Header header
        uint32 seq
        time stamp
        string frame_id
        string[] name
        float64[] position
        float64[] velocity
        float64[] effort

        :param msg:
        :return:
        """
        self.onshape_joint_dictionary = dict(zip(msg.name, msg.position))

    def onshape_check_joint_value(self, joint_name, value, error=0.1):
        """
        Check the joint by name 'pitch_joint', 'roll_joint', 'yaw_joint' is near the value given
        :param value:
        :return:
        """
        similar = self.onshape_joint_dictionary.get(joint_name) >= (value - error ) and self.onshape_joint_dictionary.get(joint_name) <= (value + error )

        return similar

    def convert_angle_to_unitary(self, angle):
        """
        Removes complete revolutions from angle and converts to the positive equivalent
        if the angle is negative
        :param angle: Has to be in radians
        :return:
        """
        # Convert to angle between [0,360)
        complete_rev = 2 * pi
        mod_angle = angle / complete_rev
        clean_angle = angle - mod_angle * complete_rev
        # Convert Negative angles to their corresponding positive values
        if clean_angle < 0:
            clean_angle += 2 * pi

        return clean_angle

    def assertAlmostEqualAngles(self, x, y,):
        c2 = (sin(x) - sin(y)) ** 2 + (cos(x) - cos(y)) ** 2
        angle_diff = acos((2.0 - c2) / 2.0)
        return angle_diff

    def onshape_check_continuous_joint_value(self, joint_name, value, error=0.1):
        """
        Check the joint by name 'pitch_joint', 'roll_joint', 'yaw_joint' is near the value given
        We have to convert the joint values removing whole revolutions and converting negative versions
        of the same angle
        :param value:
        :return:
        """
        joint_reading = self.onshape_joint_dictionary.get(joint_name)
        clean_joint_reading = self.convert_angle_to_unitary(angle=joint_reading)
        clean_value = self.convert_angle_to_unitary(angle=value)

        dif_angles = self.assertAlmostEqualAngles(clean_joint_reading, clean_value)
        similar = dif_angles <= error

        return similar

    
    def onshape_movement_go(self, waist, shoulder, elbow, pitch, yaw):
        """
        Make onshape look down
        :return:
        """
        check_rate = 5.0
        position_waist = waist
        position_shoulder = shoulder
        position_elbow = elbow
        position_pitch = pitch
        position_yaw = yaw
        
        similar_waist = False
        similar_shoulder = False
        similar_elbow = False
        similar_pitch = False
        similar_yaw = False

        rate = rospy.Rate(check_rate)
        while not (similar_waist and similar_shoulder and similar_elbow and similar_pitch and similar_yaw):
            self.move_onshape_all_joints(position_waist, position_shoulder, position_elbow, position_pitch, position_yaw)
            similar_waist = self.onshape_check_continuous_joint_value(joint_name="waist_joint", value=position_waist)
            similar_shoulder = self.onshape_check_continuous_joint_value(joint_name="shoulder_joint", value=position_shoulder)
            similar_elbow = self.onshape_check_continuous_joint_value(joint_name="elbow_joint", value=position_elbow)
            similar_pitch = self.onshape_check_continuous_joint_value(joint_name="wrist_pitch_joint", value=position_pitch)
            similar_yaw = self.onshape_check_continuous_joint_value(joint_name="wrist_yaw__joint", value=position_yaw)
            rate.sleep()


    def onshape_lookup(self):

        self.onshape_movement_go(waist=1.57, shoulder=0.5, elbow=0.2,pitch=0.3,yaw=1.57)

    def onshape_lookdown(self):

        self.onshape_movement_go(waist=-1.57, shoulder=0.5, elbow=0.2,pitch=0.3,yaw=-1.57)

    def onshape_moverandomly(self):
        waist = random.uniform(-1.57,1.57)
        shoulder = random.uniform(-1.57, 1.57)
        elbow = random.uniform(-0.15, 0.15)
        pitch = random.uniform(0.0, 0.3)
        yaw = random.uniform(0.0, 0.5)
        self.onshape_movement_go(waist, shoulder, elbow, pitch, yaw)

    def movement_random_loop(self):
        """
        Executed movements in a random way
        :return:
        """
        rospy.loginfo("Start Moving onshape...")
        while not rospy.is_shutdown():
            self.onshape_moverandomly()
            """self.onshape_movement_laugh()"""


if __name__ == "__main__":
    onshape_jointmover_object = onshapeJointMover()
    onshape_jointmover_object.movement_random_loop()