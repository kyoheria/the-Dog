import cc.arduino.*;
import java.util.Arrays;
import processing.serial.*;
int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // The serial port
boolean left;
boolean right;
int val;
int sixSensor;
int bend; 

void setup(){
  size(470,280);
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.clear();
  // Throw out the first reading, in case we started reading 
  // in the middle of a string from the sender.
  myString = myPort.readStringUntil(lf);
  myString = null; 
}

void draw(){
  
}

while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {
      String sensor []  = myString.split("\t");
      print(sensor.length);
      if(sensor.length==2){
        if (myString != null) {
          try {
            sixSensor = Integer.parseInt(sensor[1].trim());
            bend = Integer.parseInt(sensor[0].trim());
            println(sixSensor);
          }catch (NumberFormatException npe){
             // Not an integer so forget it
          }
        }
        
        //stading still 0-450
        //right 8000
        //left in negative 
        if(sixSensor<-3000){ 
          left = true;
          println("left");
          background(255,0,0);
        }else if(sixSensor>8000){
          right = true;
          println("right");
          background(0,255,0);
        }else{
          println("stright");
          background(0,0,255);
        }
        if(bend >200){
          fill(0);
          println("bad");
          rect(width/2-50,height/2-50,100,100);
        }else if(bend < 70){
          fill(255);
          println("good");
          rect(width/2-50,height/2-50,100,100);
        }
      } 
    }
  }