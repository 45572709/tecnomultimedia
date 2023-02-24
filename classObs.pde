class Obstaculo { 
  PImage cactus;
  int y,x,al,an;
  float oVel;
  Obstaculo() {
    x= -46;
    y=240;
    al=74;
    an=46;
    oVel=random(7,23);
    cactus=loadImage("obstaculo.png");
  }

  void dibujarObs() {
    image(cactus,x,y,an,al);
    oVel=random(7,23);
  }
  void mueveObs(){
  if(x>width+an){
    y=240;
    x=0; 
    oVel=random(7,23);
  }
    x +=oVel;
  }

}
