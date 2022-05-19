//Gomez Martin 
//tp1: Animando con Codigo
int posx;
int posx2;
int posx3;
int posx4;
int posx5;
int posy;
PImage Undertale1;
PImage Undertale2;
PImage Undertale3;
PImage Undertale4;
PImage Undertale5;
PImage Undertale6;
PImage Undertale7;
PImage Undertale8;
PImage Undertale9;
PFont texto;

void setup(){
  size(500, 500);
  background(0);
  
  Undertale1 = loadImage("Undertale1.png");
  Undertale2 = loadImage("Undertale2.png");
  Undertale3 = loadImage("Undertale3.png");
  Undertale4 = loadImage("Undertale4.png");
  Undertale5 = loadImage("Undertale5.png");
  Undertale6 = loadImage("Undertale6.png");
  Undertale7 = loadImage("Undertale7.png");
  Undertale8 = loadImage("Undertale8.png");
  Undertale9 = loadImage("Undertale9.png");
  texto = loadFont("Calibri-Bold-48.vlw");
  textSize(20);
  image(Undertale1, posx+50, posx+50);
  text("Hace mucho tiempo dos razas gobernaban el mundo", 40, 370);
  text("Humanos y Monstros", 40, 400);
  
}

void draw(){
  println(frameCount);
  if(frameCount > 300 && frameCount < 840){
    background(0);
    posx = posx+1;
    image(Undertale1, posx+50, 50);
    text("Hace mucho tiempo dos razas gobernaban el mundo", posx+40, 370);
    text("Humanos y Monstros", posx+40, 400);
    image(Undertale2, posx-500, 50);
    text("Un dia, la guerra estallo entre estas razas", posx-490, 370);
  }
  if(frameCount > 1300 && frameCount < 1860){
    background(0);
    posx2 = posx2+1;
    image(Undertale2, posx2+50, 50);
    text("Un dia, la guerra estallo entre estas razas", posx2+40, 370);
    image(Undertale3, posx2-500, 50);
    text("Luego de una larga batalla", posx2-490, 370);
    text("Los humanos ganaron", posx2-490, 400);
  }
  if(frameCount > 2300 && frameCount < 2870){
    background(0);
    posx3 = posx3+1;
    image(Undertale3, 50, 50);
    text("Luego de una larga batalla", posx3+40, 370);
    text("Los humanos ganaron", posx3+40, 400);
    text("Sellando a los monstros bajo tierra", posx3-490, 370);
  }
  if(frameCount > 3300 && frameCount < 4400){
    background(0);
    posx4 = posx4+1;
    image(Undertale3, posx4+50, 50);
    text("Sellando a los monstros bajo tierra", posx4+70, 370);
    text("Muchos años mas tarde", posx4-500, 250);
  }
  if(frameCount > 4400 && frameCount < 5430){
    background(0);
    posx5 = posx5+1;
    image(Undertale4, posx5-500, 50);
    text("Monte Ebott, 201X", posx5-490, 370);
    image(Undertale5, posx5-1000, 50);
    text("Las leyendas dicen que quienes escalen la montaña", posx5-990, 370);
    text("Nunca son vistos devuelta", posx5-990, 400);
  }
  if(frameCount > 5730 && frameCount < 8900){
    background(0);
    posy = posy+1;
    image(Undertale5, 50, posy+50);
    text("Las leyendas dicen que quienes escalen la montaña", 50, posy+370);
    text("Nunca son vistos devuelta", 50, posy+400);
    image(Undertale6, 50, posy-500);
    image(Undertale7, 50, posy-1000);
    image(Undertale8, 50, posy-1500);
    image(Undertale9, 50, posy-2500);
  }
  if(frameCount > 9000){
    background(0);
    textSize(20);
    text("por Toby Fox", 70, 300);
    textSize(70);
    text("UNDERTALE", 70, height/2);
    fill(mouseX, mouseY, mouseX);
    ellipse(400, 400, 50, 50);
  }
}
void mousePressed(){
  float d1 = dist( mouseX, mouseY, 400, 400);
  int r1 = 30/2;
  if( d1 < r1){
    frameCount = 0;
    textSize(20);
    background(0);
    posx=0; 
    posx2=0;
    posx3=0;
    posx4=0;
    posx5=0;
    posy=0;
    image(Undertale1, posx+50, posx+50);
    text("Hace mucho tiempo dos razas gobernaban el mundo", posx+40, posx+370);
  text("Humanos y Monstros", posx+40, posx+400);
  }
}
    
    


  
  
  
  
  
  
  
  
  
  
  
  
