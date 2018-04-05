
ArrayList<PImage> AC= new ArrayList<PImage>();
class ACScene{
  //ArrayList<PImage> AC= new ArrayList<PImage>();
  
  ACScene(){
    for (int i =1; i<15; i++){
      AC.add(loadImage("AC1."+ i +".JPG"));
    }
    //collution = new SoundFile(this, "Right Hook.mp3");
  }
  
   PImage show(int i){
       return AC.get(i);     
  }
}