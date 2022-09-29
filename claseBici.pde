class Bici{
  PImage Bi;
  PImage Bi2;

  
  Bici(){
    Bi = loadImage("bici.png");
    Bi2 = loadImage("bici2.png");
  }
  
  void dibujarBici(){
    if(frameCount <= 25){
    image(Bi, 700, 535);
    }
    if(frameCount >= 25){
    image(Bi2, 700, 535);
    }
  }
}
