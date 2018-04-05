AudioPlayer baby;
Minim crying;
ArrayList<PImage> alleyOne= new ArrayList<PImage>();
ArrayList<PImage> alleyTwo= new ArrayList<PImage>();
class Alley{
  //ArrayList<PImage> AC= new ArrayList<PImage>();
  
  Alley(){
    alleyOne.add(loadImage("alley1.1.JPG"));
    alleyOne.add(loadImage("alley1.2.JPG"));
    alleyTwo.add(loadImage("alley2.1.JPG"));
    alleyTwo.add(loadImage("alley2.2.JPG"));
    crying = new Minim(this);
    baby = crying.loadFile("baby-edit.mp3",2048);
  }
  
   PImage showOne(int i){
       return alleyOne.get(i);     
  }
  PImage showTwo(int i){
       return alleyTwo.get(i);     
  }
}