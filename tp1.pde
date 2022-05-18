/*
Mateo Andrade, tp1
91385/4
Espero te guste :)
*/
PImage dc, logo, btn;
int y, y1, tran, tran1;
PFont arial;
float tiempo, c;
//\n 1380
void setup() {
  size(600, 600);
  dc= loadImage("DC.png");
  logo= loadImage("logo B.png");
  btn= loadImage("batmanF2.jpg");
  arial= loadFont("ArialNarrow-Bold-20.vlw");
  textFont(arial);
}

void draw() {
  tiempo= frameCount;
  y --;
  y1 --;
  tran++;
  tran1--;
  background(0);
  println(frameCount);
  textSize(24);
  tint(200, 255, 255);
  image(dc, width/CENTER, y+ height/CENTER, 200, 200);

  fill(255, 0, 0);
  text("Director by       MATT REEVES \n\n\nProduced by    DYLAN CLARK, MATT REEVES\n\n\n Music by         MICHAEL GIACCHINO \n\n\n Actors:\n                       ROBERT PATTINSON\n                       ZOE KRAVITZ\n                       PAUL DAN\n                       JEFFREY WRIGHT\n                       JOHN TURTURRO ", 150, 700 + y1);
  text("Traffic cop      MARCUS ONILUDE\n  Detective on iphone      ELENA SUREL\n  Surly cop              ED KEAR\n  Digital forensic tech      AMADA BLAKE", 150, 1300 + y1);
  if (tiempo>1380 && tiempo<1600) {
    tint(255, 255, 255, tran-1380);
    image(btn, 10, 50, 590, 550);
  }
  if (tiempo>1599.9 && tiempo<1840) {
    tint(255, 255, 255, tran1+1840);
    image(btn, 10, 50, 590, 550);
  }
  if (tiempo>1840) {
    textSize(14);
    fill(255, 0, 0);
    text("PARA LLAMAR A BATMAN\n PRESIONE LA LETRA  'N'\n\n Y PARA APAGARLO PRESIONE\n LA LETRA 'F'", 20, 500); 
    fill(100);
    rect(277, 560, 40, 60);
    fill(150);
    ellipse( 300, 560, 70, 30);
    fill(c);
    quad(335, 560, 550, 180, 40, 180, 266, 558);
    image(logo, 143, 185, 319, 145);
    fill(110, 130, 255, 70);
    rect(500, 500, 100, 100, 10);
    textSize(12);
    fill(255,0,0);
    text("PRESIONE AQUI\n PARA VOLVER\n AL PRINCIPIO", 510,530); 
  } 
}
void mousePressed() {
  if (mouseX>500 && mouseX<600 && mouseY>500 && mouseY<600) {
    frameCount=0;
    tiempo= 0;
    y=0;
    y1=0;
    tran=0;
    tran1=0;
  } 
}
void keyPressed() {
  if (key =='n') {
    c= random(100, 200);
  }
  if (key =='f') {
    c= 0;
  }
}
