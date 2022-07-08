/*
tp3
Mateo Andrade
91385/4
comi.1
https://youtu.be/dX9HdjTs5pg
*/
float posX;
float posY = 250;
int cant=2;
int estado, todo;
int canti=10;
PImage autos, flechas;
float[][]pos= new float[canti][2];
float[] tam= new float [2];
float [] direc = new float[canti];
PImage [] persona = new PImage[cant];
String []textos= {"¡¡ CORRE !!", "INSTRUCCIONES:", "Logra cruzar la calle sin \nque te toquen los autos.\nSi te tocan estas muerto.", "CONTROLES:", 
  "Te podras mover por cualquier rincón\n de la pantalla con esas teclas.", "JUGAR", "GANASTE!!", "PERDISTE :("};
  
  
void setup() {
  size(850, 500);
  autos=loadImage("imagen presentación.png");
  flechas=loadImage("flechas.jpg");
  tam[0]=15;
  tam[1]=75;
  for (int i=0; i<cant; i++) {
    persona[i] = loadImage("persona"+i+".png"); //hombre
  }
  for (int i=0; i<canti; i++) {
    direc[i] = random(1.5, 5);
    pos[i][0] = random(-200, -100);            // autos
    pos[i][1] = random(tam[0]/2, 700);
  }
  for (int i=0; i<cant2; i++) {
    pos2[i][0] = random(width);
    pos2[i][1] = random(height);              // confeti
   y[i] = random(2,4);
}
}


void draw() {
  println(mouseX);
  println(mouseY);
  background(120);
  if (estado==0) {//inicio
    fill(255);
    textSize(40);
    text(textos[0], 320, 240);
    textSize(20);
    text(textos[1], 0, 360);
    text(textos[3], 700, 300);
    textSize(17);
    text(textos[2], 10, 400);
    text(textos[5], 390, 450);
    textSize(12);
    text(textos[4], 620, 450);

    fill(0, 100, 255, 80);
    rect(380, 425, 70, 40);

    image(autos, 160, 0);
    image(flechas, 680, 330, 130, 90);
  }
  if (estado==1) {//jugando
    image(persona[todo], posX, posY);
    for (int t=0; t<canti; t++) {
      obstaculos(pos[t][1], pos[t][0], tam[0], tam[1]);
      if (pos[t][0]>height+tam[1]) {
        direc[t] = random(1.5, 5);
        pos[t][0] = random(-100, -200);
        pos[t][1] = random(tam[0]/2, 700);
      }
      pos[t][0] += direc[t];
      if (posX>800) {
        confeti();
        estado=3;
      }
      if (choca(posX, posY, pos[t][1], pos[t][0], 40))
        estado=2;
    }
  }
  if (estado==2) { //pierde
    background(113, 23, 23);
    textSize(40);
    fill(0);
    rect(98, 383, 175, 23,5);
    rect(548, 383, 180, 23,5);
    text(textos[7], 300, 250);
    fill(255);
    text(textos[7], 303, 252);
    textSize(20);
    text("VOLVER A JUGAR", 100, 400);
    text("VOLVER AL INICIO", 550, 400);
  }
  if (estado==3) { //gana
    background(23, 113, 49);
    confeti();
    textSize(40);
    fill(0);
    text(textos[6], 300, 250);
    fill(255);
    text(textos[6], 303, 252);
    
    rect(98, 383, 175, 23,5);
    rect(548, 383, 180, 23,5);
    textSize(20);
    fill(0);
    text("VOLVER A JUGAR", 100, 400);
    text("VOLVER AL INICIO", 550, 400);
  }
}


void keyPressed() {
  if ( keyCode == DOWN ) {
    posY+=8;
    todo+=1;
  }
  if ( keyCode == UP) {
    posY-=8;
    todo-=1;
  }
  if ( keyCode == LEFT ) {
    posX-=8;
    todo-=1;
  }
  if ( keyCode == RIGHT) {
    posX+=8;
    todo+=1;
  }
  if ( todo == persona.length ) {  
    todo = 0;
  } else if ( todo == -1 ) {
    todo = 1;
  }
}


void mousePressed() {
  if (mouseX>380 && mouseX<450 && mouseY>425 && mouseY<465) {
    estado=1;
  }
  if (mouseX>98 && mouseX<271 && mouseY>383 && mouseY<405) {
    for (int i=0; i<canti; i++) {
      direc[i] = random(1.5, 5);
      pos[i][0] = random(-200, -100);
      pos[i][1] = random(tam[0]/2, 700);
    }
       posX=0;
   posY=250;
    estado=1;
  }
  if (mouseX>548 && mouseX<723 && mouseY>383 && mouseY<405) {
    for (int i=0; i<canti; i++) {
      direc[i] = random(1.5, 5);
      pos[i][0] = random(-200, -100);
      pos[i][1] = random(tam[0]/2, 700);
    }
       posX=0;
   posY=250;
    estado=0;
  }
}
