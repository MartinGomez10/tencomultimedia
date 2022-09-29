class Arboles{
  PImage Natural;
  
  Arboles(){
    
    Natural = loadImage("arboles.png");
  }
  
  void dibujarArboles(){
    image(Natural, 0, 0);
    fill(0);
    textSize(20);
    text("Cualquier tecla para Trabajar", 50, 550);
    }
}
  
 
