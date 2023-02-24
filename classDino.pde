class Dino {
  PImage dinon;
  float baseY, px, py, vy, ay;
  float dx,dy;
  boolean salto, saltando;
  Dino(){
    baseY = 226;
    px = 600;
    py = baseY;
    dx=100;
    dy=100;
    vy = 0;
    ay = 0;
    salto = true;
    saltando = false;
    dinon=loadImage("dino00.png");
  }
  void dibujarDino() {
    vy+=ay;
    py+=vy;
    dinoNormal();
    image(dinon,px,py,dx,dy);
  }
  void dinoSalto(){       //dino en el aire
    if( salto ){
      salto = false;
      saltando = true;
      vy = -18;//altura del salto
      ay = 1;//velocidad del salto
    }
  }
  void dinoNormal(){       //dino en el suelo
    if( py >= baseY ){
      py = baseY;
      vy = 0;
      ay = 0;
      saltando = false;
      salto = true;
    }
  }
}
