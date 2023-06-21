/*
 * rosserial Servo Control Example
 *
 * This sketch demonstrates the control of hobby R/C servos
 * using ROS and the arduino
 * 
 * For the full tutorial write up, visit
 * www.ros.org/wiki/rosserial_arduino_demos
 *
 * For more information on the Arduino Servo Library
 * Checkout :
 * http://www.arduino.cc/en/Reference/Servo
 */
#include <Servo.h> 
#include <ros.h>
//#include <std_msgs/UInt32.h>
#include <jkprobot/Ardubot.h>

ros::NodeHandle  nh;

//uint16_t pos;

Servo base_servo;
Servo waist_servo;
Servo shoulder_servo;

void servo_cb( const jkprobot::Ardubot& cmd_msg){
  //set servo angle, should be from 0-180 
  base_servo.write(cmd_msg.base_deg);
  delay(5);
  waist_servo.write(cmd_msg.waist_deg);
  delay(5);
  shoulder_servo.write(cmd_msg.shoulder_deg);
  delay(5);
 
  digitalWrite(13, HIGH-digitalRead(13));  //toggle led  
}


ros::Subscriber<jkprobot::Ardubot> sub("servo_move", servo_cb);
//ros::Subscriber<jkprobot::Ardubot> sub("button", servo_cb);

//std_msgs::UInt16 pos_msg;
//ros::Publisher chatter("position", &pos_msg);

void setup(){
  pinMode(13, OUTPUT);

  nh.initNode();
  nh.subscribe(sub);
  
  base_servo.attach(9); //attach it to pin 9
  base_servo.write(0); //posicao inicial servo
  waist_servo.attach(10); //attach it to pin 9
  waist_servo.write(0); //posicao inicial servo
  shoulder_servo.attach(11); //attach it to pin 9
  shoulder_servo.write(0); //posicao inicial servo
  
}

void loop(){
  //obtem a ultima posicao do servo
  //pos = base_servo.read();
  //pos_msg.data = pos;
  //publica a posicao
  //chatter.publish( &pos_msg );
  nh.spinOnce();
  delay(1000);
  
}
