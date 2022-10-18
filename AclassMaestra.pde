class DinoGoogle {
  Fondo Cac;
  Dinosaurio m;

  DinoGoogle() {
    Cac=new Fondo();
    m=new Dinosaurio(200, 650);
  }

  void Graf() {
    Cac.DibujarCactus(); 
    m.DibujarDino();
  }
  void DinoSalta(int press) {
  m.MueveDino(press);
  }
}
