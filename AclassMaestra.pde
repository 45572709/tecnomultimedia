class DinoGoogle {
  Fondo Cac;
  Dinosaurio m;

  DinoGoogle() {
    Cac=new Fondo();
    m=new Dinosaurio();
  }

  void Graf() {
    Cac.DibujarCactus(); 
    m.DibujarDino();
  }
}
