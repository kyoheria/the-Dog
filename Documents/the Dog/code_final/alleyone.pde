ArrayList<PImage> aL= new ArrayList<PImage>();
ArrayList<AudioPlayer> APA =new ArrayList<AudioPlayer>();
Minim alley = new Minim(this);

class Alleyone{
  Alleyone(){
  for (int i =1; i<2; i++){
      aL.add(loadImage("alley1."+ i +".JPG"));
      AP.add(null);
      }
  }
  ArrayList addalleyonePic(ArrayList a){
    for(int i=0;i<aL.size();i++){
      a.add(AC.get(i));
    }
    return a;
  }
  ArrayList addalleyoneSound(ArrayList a){
    for(int i=0;i<APA.size();i++){
      a.add(AP.get(i));
    }
    return a;
  }
}