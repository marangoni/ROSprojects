/*
 * Código para controle do sistema arduino com 3 servos (jokenPô)
 * baseado rosserial Servo Control Example
 *
 * For the full tutorial write up, visit
 * www.ros.org/wiki/rosserial_arduino_demos
 * Referencia em portugues:
 * https://embarcados.com.br/rosserial_arduino/
 */
 
#include <Servo.h> 
#include <ros.h>
#include <jkprobot/Ardubot.h>

//Comando rosserial para criacao do node /serial_node
ros::NodeHandle  nh;

//Cria os objetos servo da biblioteca Servo.h
Servo base_servo;
Servo waist_servo;
Servo shoulder_servo;

//Definicao da rotina - servo_cb - chamada sempre que o node /serial_node recebe uma mensagem do tipo /servo_move
//Comanda os servos - base_servo, waist_servo e shoulder_servo para movimento conforme valores recebidos na mensagem
//Inverte o led na placa

void servo_cb( const jkprobot::Ardubot& cmd_msg){
  //set servo angle, should be from 0-180 
  base_servo.write(cmd_msg.base_deg);
  delay(15);
  waist_servo.write(cmd_msg.waist_deg);
  delay(15);
  shoulder_servo.write(cmd_msg.shoulder_deg);
  delay(15);
  digitalWrite(13, HIGH-digitalRead(13));  //toggle led  
}

//Cria o subscriber do nó /servo_mode, do pacote arduino_control_tutorials, mensagem do tipo Ardubot
//Define a funcao callback com o nome servo_cb
//Toda vez que uma mensagem /servo_move é recebida, essa rotina é chamada

ros::Subscriber<jkprobot::Ardubot> sub("servo_move", servo_cb);



//inicialização da placa
//Configura pino led como OUTPUT
//Inicializa o /serial_node (criado pelo rosserial)
//Monitora (subscribe) o tópico /servo_move - definido

void setup(){
  pinMode(13, OUTPUT);

  nh.initNode();
  nh.subscribe(sub);
  
  base_servo.attach(9); //attach it to pin 9
  base_servo.write(0); //posicao inicial servo
  waist_servo.attach(10); //attach it to pin 10
  waist_servo.write(0); //posicao inicial servo
  shoulder_servo.attach(11); //attach it to pin 11
  shoulder_servo.write(0); //posicao inicial servo
  
}

void loop()
{
  nh.spinOnce();
  delay(1000);
  
}
