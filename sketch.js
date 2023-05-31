
let cuadrilateros = [];

function setup() {
  createCanvas(windowWidth,windowHeight);
  background(0);

  // Crear cuadriláteros en posiciones aleatorias
  for (let i = 0; i < 80; i++) {
    let x = random(width);
    let y = random(height);
    let tamaño = random(150, 450);
    let angulo = random(PI);
    let cuadrilatero = new Cuadrilatero(x, y, tamaño, angulo);
    cuadrilateros.push(cuadrilatero);
  }
}

function draw() {
  background(25);

  for (let i = 0; i < cuadrilateros.length; i++) {
    cuadrilateros[i].dibujar();
  }

  // Rotación y tamaño de los cuadriláteros según la posición del mouse
  let tiempo = millis();

  // Si mouseX es mayor a width/2, los cuadriláteros rotan durante 10 segundos
  if (mouseX > width / 2 && tiempo < 10000) {
    for (let i = 0; i < cuadrilateros.length; i++) {
      cuadrilateros[i].angulo += 0.02;
    }
  }

  // Si mouseX es menor a width/2, los cuadriláteros aumentan su tamaño y rotan durante 10 segundos
  if (mouseX < width / 2 && tiempo < 10000) {
    for (let i = 0; i < cuadrilateros.length; i++) {
      cuadrilateros[i].tamaño += 0.5;
      cuadrilateros[i].angulo += 0.2;
    }
  }
 
}
