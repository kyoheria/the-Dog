import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import java.util.Arrays;
import processing.serial.*;
Alleyone alleyone;
ACScene ending;
ArrayList<PImage> scence= new ArrayList<PImage>();
int numFrames;  
ArrayList<AudioPlayer> player= new ArrayList<AudioPlayer>();
ArrayList<Minim> min = new ArrayList<Minim>();
ArrayList<PImage> story = new ArrayList<PImage>();
void setup(){
  fullScreen();
  alleyone = new Alleyone();
  ending = new ACScene();
  scence= alleyone.addalleyonePic(scence);
  scence= ending.addendPic(scence);
  player= alleyone.addalleyoneSound(scence);
  player= ending.addendSound(scence);
  println(scence.size());
}
void draw(){
  
  numFrames %= scence.size();
  if(numFrames<scence.size()){
    image(scence.get(numFrames), 0, 0, width, height);
  }else{
    numFrames = 0;
  }
  numFrames++;
}