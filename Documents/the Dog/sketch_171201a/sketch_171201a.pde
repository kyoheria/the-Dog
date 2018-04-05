import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import java.util.Arrays;
import processing.serial.*;
ArrayList<AudioPlayer> player= new ArrayList<AudioPlayer>();
ArrayList<Minim> sound = new ArrayList<Minim>();
PImage start;
ArrayList<PImage> images = new ArrayList<PImage> ();

//ArrayList<Scene> last = new ArrayList<Scene>();
int intractive = 0; 
Alley alley;
ACScene animalControl;
Right rightOfAlley;
Left leftOfAlley;
int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // The serial port
boolean left;
boolean right;
boolean up;
boolean down;
boolean one=false;
int val;
int sixSensor;
int bend;
int numFrames;
int frame;
void setup(){
  left = false;
  right = false;
  frameRate(10);
  animalControl = new ACScene();
  alley = new Alley();
  rightOfAlley = new Right();
  leftOfAlley = new Left();
  fullScreen();
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.clear();
  myString = myPort.readStringUntil(lf);
  myString = null;
  /*pRG = loadImage("person2.1.JPG");
  pRB = loadImage("person2.2.JPG");
  pLG = loadImage("person1.1.JPG");
  pLB = loadImage("person1.2.JPG");
  */
  
  
  
  
}
void draw(){
  delay(5000);
  numFrames++;
  numFrames %= 14;    
  image(animalControl.show(numFrames), 0, 0, width, height);
  delay(1000);
  
  /*left = false;
   right = false;
   up = false;
   down = false;
   numFrames++;
   numFrames %= 2;
   image(alley.showOne(numFrames), 0, 0, width, height);
   delay(1000);
   image(alley.showOne(numFrames),0, 0, width, height);
   delay(1000);
   Sensor();
   if(right){
     text("going right", width/2, height/2);
     image(rightOfAlley.show(),0,0,width,height);
     //delay(1000);
     Sensor();
     if(up&&!down){
       image(pRB,0,0,width,height);
        delay(1000);
     }else if(down && !up){
       image(pRG,0,0,width,height);
        delay(1000);
     }
   }else if (left){
     image(leftOfAlley.show(),0,0,width,height);
     delay(1000);
   } else{
     image(alley.showOne(1),0, 0, width, height);
     delay(1000);
   }
   /*image(alley.showTwo(0), 0, 0, width, height);
   delay(1000);
   image(alley.showTwo(1),0, 0, width, height);
   delay(1000);*/
}


void Sensor(){
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
            }
          }
          //stading still 0-450,right 8000,left in negative 
          if(sixSensor<-4000){ 
            left = true;right = false;
          }else if(sixSensor>7000){
            right = true;left = false;
          }else{
            right = false;left = false;
          }
          if(bend >200){
            fill(0);
            up = false;down = true;
            println("bad");
          }else if(bend < 70){
            fill(255);
            up = true;
            down = false;
            println("good");
          }
        } 
      }
    }
}

void page1(int i) {
  
    image(alley.showOne(0), i, 0, width, height);
    image(alley.showOne(1), i+width, 0, width, height);
    one = true;

}

void page2() {
  if (left){
    image(leftOfAlley.show(), 0, 0, width, height);
    delay(5000);
    for (int i =0;i<100;i++){
    Sensor();
    }
    if(!leftOfAlley.intracted()&& up){
      //image(pLB,0,0,width,height);
    }else if (!rightOfAlley.intracted()&& !up){
      //image(pLG,0,0,width,height);
      intractive++;
    }else{
      image(leftOfAlley.show(), 0, 0, width, height);
    }
    
  }
}

void page3(){
  //for(int i =width; i<0; i--){
     image(rightOfAlley.show(), 0, 0, width, height);
     for (int i =0;i<100;i++){
    Sensor();
    }
    if(!rightOfAlley.intracted()&& up){
      //image(pRB,0,0,width,height);
    }else if (!rightOfAlley.intracted()&& !up){
      //image(pRG,0,0,width,height);
      intractive++;
    }
  //}
}

void pageEnd(){
  numFrames++;
  numFrames %= 4;    
  image(animalControl.show(numFrames), 0, 0, width, height);
  delay(1000);
}