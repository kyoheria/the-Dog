PImage rightalleyP;
PImage rightalley;
boolean intracted;
class Right{
  //ArrayList<PImage> AC= new ArrayList<PImage>();
  
  Right(){
    intracted = false;
    rightalleyP = loadImage("alleyRight1.2.JPG");
    rightalley = loadImage("alleyRight1.1.JPG");
    
  }
  
   PImage show(){
       if(intracted){
         return rightalley;
       }else{
         return rightalleyP;
       }
  }
  boolean intracted(){
    return intracted;
  }
}