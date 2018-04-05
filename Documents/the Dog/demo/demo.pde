import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.sound.*;
AudioPlayer gasp;
AudioPlayer page;
AudioPlayer player;
AudioPlayer street;
AudioPlayer heyG;
AudioPlayer heyM;
AudioPlayer hit;
AudioPlayer bit;
AudioPlayer ACH;
AudioPlayer baby;
AudioPlayer hollow;
Minim theme;//audio context
Minim gasping;
Minim hollowing;
Minim heyGing;
Minim annoyingG;
Minim annoyingM;
Minim newpage;
Minim streeting;
Minim ACHing;
Minim heyMing;
Minim hitting;
Minim whining;
Minim bitting;
Minim backbabying;
Minim crying;
Minim nineing;
AudioPlayer bark;
AudioPlayer annoyG;
AudioPlayer annoyM;
AudioPlayer backbaby;
AudioPlayer whine;
AudioPlayer nine;
Minim barking;
ArrayList<PImage> scence= new ArrayList<PImage>();
int numFrames;
int i;
float colorspeed = 0;
color b = color(0,0,0);
color c;
void setup(){
  fullScreen();
  scence.add(loadImage("alley1.1.JPG"));
  scence.add(loadImage("alley1.1.JPG"));
  scence.add(loadImage("alley2.2.JPG"));
  scence.add(loadImage("alley1.1.JPG"));
  scence.add(loadImage("alley1.2.JPG"));
  scence.add(loadImage("alleyRight1.2.JPG"));
  scence.add(loadImage("person2.1.JPG"));
  scence.add(loadImage("alley2.1.JPG"));
  scence.add(loadImage("alley1.1.JPG"));
  scence.add(loadImage("alley1.2.JPG"));
  scence.add(loadImage("alleyRight1.2.JPG"));
  scence.add(loadImage("person2.2.JPG"));
  scence.add(loadImage("alley2.1.JPG"));
  scence.add(loadImage("alley1.1.JPG"));
  scence.add(loadImage("alley1.2.JPG"));
  scence.add(loadImage("alleyLeft1.2.JPG"));
  scence.add(loadImage("person1.1.JPG"));
  scence.add(loadImage("alley2.1.JPG"));
  scence.add(loadImage("alley1.1.JPG"));
  scence.add(loadImage("alley1.2.JPG"));
  scence.add(loadImage("alleyLeft1.2.JPG"));
  scence.add(loadImage("person1.2.JPG"));
  scence.add(loadImage("alley2.1.JPG"));
  scence.add(loadImage("alley1.1.JPG"));
  scence.add(loadImage("alley1.2.JPG"));
  scence.add(loadImage("alleyRight1.1.JPG"));
  scence.add(loadImage("AC.0.1.JPG"));
  scence.add(loadImage("alley2.1.JPG"));
  //theme= new SoundFile(this, "Impossible-Decision.mp3");
  
  for (int i =1; i<16; i++){
      scence.add(loadImage("AC1."+ i +".JPG"));
    }
  backbabying = new Minim(this);
  theme = new Minim(this);
  streeting = new Minim(this);
  ACHing = new Minim(this);
  heyGing = new Minim(this);
  heyMing = new Minim(this);
  hitting = new Minim(this);
  bitting = new Minim(this);
  crying = new Minim(this);
  barking = new Minim(this);
  newpage = new Minim(this);
  whining = new Minim(this);
  nineing = new Minim(this);
  gasping = new Minim(this);
  annoyingG = new Minim(this);
  annoyingM = new Minim(this);
  hollowing = new Minim(this);
  hollow = hollowing.loadFile("hollow.wav");
  annoyG = annoyingG.loadFile("annoyed-girl_02.wav");
  annoyM = annoyingM.loadFile("annoyed-man-edit.wav");
  backbaby = backbabying.loadFile("baby-edit-lower_edit.wav",2048);
  ACH = ACHing.loadFile("AC-hurt.mp3",2048);
  heyM = heyMing.loadFile("hey-man.wav",2048);
  street = streeting.loadFile("streetsound-edit.mp3",2048);
  heyG = heyGing.loadFile("hey-girl.wav",2048);
  whine = whining.loadFile("Whine.mp3",2048);
  bark = barking.loadFile("dogbark-edit2.mp3",2048);
  baby = crying.loadFile("baby-edit.mp3",2048);
  hit = hitting.loadFile("hitting01.wav",2048);
  bit = bitting.loadFile("DogBite.mp3",2048);
  page = newpage.loadFile("newpage.wav",2048);
  player = theme.loadFile("Impossible-Decision-cut.mp3", 2048);
  nine = nineing.loadFile("911.mp3", 2048);
  gasp = gasping.loadFile("Gaps_02.wav", 2048);
  player.rewind();
  player.loop();
  street.rewind();
  street.loop(2);
  
}
void draw(){
  if(i==2||i==8||i==13||i==18||i==22||i==27){
    backbaby.rewind();
    backbaby.play();
    hollow.rewind();
    hollow.play();
  }
  if(i<42){
    if(i==30){
      bit.play(1);
      ACH.play(1);
    }
    if(i==37){
      gasp.rewind();
      gasp.play();
    }
    if(i==31){
      hit.play();
    }
    if(i==35){
      baby.rewind();
      baby.loop(2);
    }
    if(i==40){
      nine.rewind();
      nine.play(1);
    }
    if(i==9||i==19||i==27){
      bark.rewind();
      delay(100);
      bark.play();
    }
    if(i==27){
      bark.rewind();
      delay(100);
      bark.play(2);
    }
    if(i==11){
      heyM.play(1);
    }
    if(i==21){
      heyG.play(1);
    }
    
    if(i==5||i==15||i==34){
      whine.rewind();
      delay(100);
      whine.play(1);
    }
    if(i==5){
      annoyM.rewind();
      delay(100);
      annoyM.play(1);
    }
    if(i==15){
      annoyG.rewind();
      delay(100);
      annoyG.play(1);
    }
  numFrames++;
  numFrames %= scence.size();    
  image(scence.get(numFrames), 0, 0, width, height);
  if(i>35){
    delay(3000);
  }
  delay(2500);
 
  }else if(i==44){
    delay(3000);
    image(scence.get(1),0,0,width, height);
    
  }else if(i>44){
    colorspeed+=0.1;
    fill(0,0,0,colorspeed);
    rect(0,0,width,height);
    page.pause();
  }
  if(i<44){
    page.rewind();
    page.setVolume(100);
    page.play();
  }
  if(i>60){
    baby.pause();
    player.pause();
  }
  i++;
}