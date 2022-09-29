class Ruedas{
  PImage Rueda1;
  PImage Rueda2;
 
  
  Ruedas(){
    Rueda1 = loadImage("ruedas.png");
    Rueda2 = loadImage("ruedas2.png");
  }
  void dibujarRuedas(){
    if(frameCount <= 25){ 
      image(Rueda2, 700, 535);
    }
    if(frameCount >= 25){
      image(Rueda1, 700, 535);
    }

    if(frameCount >= 50){
      frameCount = 0;
    }
  }
}
