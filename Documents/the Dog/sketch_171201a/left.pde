PImage leftalley;
PImage leftalleyP;
boolean intractedL;
class Left{
  //ArrayList<PImage> AC= new ArrayList<PImage>();
  
  Left(){
    intracted = false;
    leftalleyP = loadImage("alleyLeft1.2.JPG");
    leftalley = loadImage("alleyLeft1.1.JPG");
    
  }
  
   PImage show(){
       if(intracted){
         return leftalley;
       }else{
         return leftalleyP;
       }
  }
  boolean intracted(){
    return intractedL;
  }
}