class Fondo {
  PImage cactus;
  int miF;
  Fondo() {
    miF = -width;
    cactus = loadImage("fondo00.png");
  }
  void DibujarCactus() {
    image(cactus, miF, 0);
    Mov();
  }
  void Mov() {
    miF = miF<0 ? miF :-width;
    miF ++;
  }
}
