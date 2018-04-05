ArrayList<PImage> AC= new ArrayList<PImage>();
ArrayList<AudioPlayer> AP =new ArrayList<AudioPlayer>();
Minim minim = new Minim(this);
class ACScene{
  //ArrayList<PImage> AC= new ArrayList<PImage>();
  ACScene(){
    for (int i =1; i<16; i++){
      AC.add(loadImage("AC1."+ i +".JPG"));
      if(i==1){
        AP.add( minim.loadFile("dogbark-edit2.mp3",2048));
      }else if(i==3){
        AP.add( minim.loadFile("DogBite.mp3",2048));
      }else if(i==4){
        AP.add( minim.loadFile("hitting01.wav",2048));
      }else if(i==9){
        AP.add( minim.loadFile("Whine.mp3",2048));
      }else if(i==10){
        AP.add( minim.loadFile("baby-edit.mp3",2048));
      }else if(i==11){
        AP.add( minim.loadFile("Gaps_02.wav",2048));
      }else if(i==13){
        AP.add( minim.loadFile("9.11.mp3",2048));
      }else{
        AP.add(null);
      }
    }
  }
  ArrayList addendPic(ArrayList a){
    for(int i=0;i<AC.size();i++){
      a.add(AC.get(i));
    }
    return a;
  }
  ArrayList addendSound(ArrayList a){
    for(int i=0;i<AC.size();i++){
      a.add(AP.get(i));
    }
    return a;
  }
}