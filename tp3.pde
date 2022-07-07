//Gomez, Martin
//Legajo: 91465/3
//https://www.youtube.com/watch?v=y3BD9vkYGTY
PImage [] imagenes = new PImage [10];
String [] textos = {"Escape del Infierno \n Presiona Enter", 
"Bienvenido \n Muevete con WASD para llegar \n a la puerta, evita los demonios y \n sus rayos!!! \n Presione X para seguir", 
"GANASTE MUY BIEN \n Volver al Inicio con R", "MUY MAL PERDISTE! \n Volve al Inicio con R"};
int estado;
int enemigos=5;
int posy;
int vely;
int d;
int w;
int velw;
int veld;

void setup(){
  size(600, 600);
  textSize(50);
  imagenes[0] = loadImage("Fondo.png");
  imagenes[1] = loadImage("fondo2.png");
  imagenes[2] = loadImage("demonio.png");
  imagenes[3] = loadImage("humano.png");
  imagenes[4] = loadImage("salida.png");
  imagenes[5] = loadImage("fuego.png");
  imagenes[6] = loadImage("cara.png");
  imagenes[7] = loadImage("estrellas.png");
  imagenes[8] = loadImage("rayo.png");
  imagenes[9] = loadImage("sangre.png");
  vely=0;
  veld=0;
  velw=0;
}

void draw(){
  if(estado==0){
    Inicio(textos[0], 100, 100, 50);
  }
  else if(estado==1){
    Reglas(textos[1], 100, 100, 30);
  }
  else if(estado==2){
    Jugar();
  }
  else if(estado==3){
    Ganar(textos[2], 100, 300, 50); 
  }
  else if(estado==4){
    Perder(textos[3], 130, 300, 50); 
  }
}

void Inicio(String texto, int px, int py, int tam){
  image(imagenes[5], 0, 0);
  textSize(tam);
  text(texto, px, py);
  text(texto, px, py);
  if(key==ENTER){
    estado = 1;
  }
}

void Reglas(String texto, int px, int py, int tam){
  background(0);
  image(imagenes[6], 250, 400);
  textSize(tam);
  text(texto, px, py);
  if(key=='x'){
    estado = 2;
  }
}
void Jugar(){
  image(imagenes[0], 0, 0);
  image(imagenes[1], 0, 0);
  image(imagenes[4], 550, 550);
  image(imagenes[8], 150, 0);
  image(imagenes[8], 300, 325);
  image(imagenes[8], 450, 0);
  posy = posy+vely;
  for (int i=1; i<enemigos; i++){
    image(imagenes[2], i*150, posy+275);
  }
  Personaje();
}
void Personaje(){
  d = d+veld;
  w = w+velw;
  image(imagenes[3], d+0, w+0);
  if(key=='d'){
     veld= 1;
  }
    if(key=='a'){
     veld= -1;
  }
  if(key=='w'){
     velw= -1;
  }
    if(key=='s'){
     velw= 1;
  }
  if(d>=570){
    veld=-1;
  }
  if(d<0){
    veld=+1;
  }
  if(w<=0){
    velw=+1;
  }
  if(w>570){
    velw=-1;
  }
  if(d>550 && w>550){
    estado=3;
    
  }  
  if(d>=120 && d<=200 && w>=0 && w<=325){
    estado = 4;
  }
  if(d>=270 && d<=350 && w>=245 && w<=600){
    estado = 4;
  }
  if(d>=420 && d<=500 && w>=0 && w<=325){
    estado = 4;
  }
}

void Ganar(String texto, int px, int py, int tam){
  background(0, 0, 250);
  image(imagenes[7], 0, 0);
  textSize(tam);
  text(texto, px, py);
  textSize(tam);
  text(texto, px, py);
  if(key=='r'){
    estado = 0;
    d=0;
    w=0; 
    posy=0;
  }
}

void Perder(String texto, int px, int py, int tam){
  image(imagenes[9], 0, 0);
  textSize(tam);
  text(texto, px, py);
  text(texto, px, py);
  if(key=='r'){
    estado = 0;
    d=0;
    w=0; 
    posy=0;
  }
}
  
