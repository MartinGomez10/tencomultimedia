class Ciudad{
  PImage Fondo;
  int px;
  
  Ciudad(){
    px=0;
    Fondo = loadImage("fondo.png");
  }
  
  void dibujarCiudad(){
    image(Fondo, px,0);
    moverCiudad();
    fill(255);
    textSize(20);
    text("R para relajarse", 50, 550);
  }
  
  
  void moverCiudad(){
    px = px<0 ? px : -width;
    px ++;
  }
}
    
