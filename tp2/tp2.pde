//tp2
//Malena Escobar Escudero
//Comisión 5

int animacion, pantalla, limiteDeAnimacion, opacidad, tamTexto, diametro, tiempo;
PFont fuente;
PImage dormitorio1, comedor, tren, tren2;

void setup () {
  size (640, 480);
  dormitorio1 = loadImage("dormitorio1.jpg");
  comedor = loadImage ("comedor.png");
  tren = loadImage ("tren.png");
  tren2 = loadImage ("tren2.jpg");
  fuente = loadFont ("YuGothicUI-Bold-48.vlw");
  textFont(fuente, 35);
  pantalla = 1;
  animacion = 0;
  limiteDeAnimacion = 300;
  opacidad = 0;
  diametro = 50;
  tiempo = 0;
  tamTexto = 40;
  textSize (tamTexto);
}

void draw () {
  animacion++;

  //velocidad de la animación:
  if (animacion > 200) {
    animacion = 0;
    pantalla++;
  }

  if (pantalla == 1) {
    image(comedor, 0, 0, width, height);
    fill (24, 4, 85);
    rect(0, height/2, width, height/8);
    fill(255);
    text("Asesinato en el orient express", animacion*2, height/1.7 );
  }

  if (pantalla == 2 ) {
    image(tren, 0, 0, width, height);
    fill (193, 10, 34);
    text("Es una novela de misterio\nescrita por Agatha Christie y fue\npublicada en 1934", 30, animacion*2);
  }

  if (pantalla == 3) {
    if (animacion < 255) {
      image (dormitorio1, 0, 0, width, height);
      opacidad = animacion;
    }
    fill (24, 50, 110, opacidad*4);
    text ("Hercules Poirot es el\npersonaje principal\nde la novela", 50, height/2);
  }

  if (pantalla == 4) {
    image (tren2, 0, 0, width, height);
    if (tamTexto < 40) {
    }
    push();
    fill (255, 13, 13);
    circle (500, 400, 150);
    textSize (30);
    fill(254, 255, 13);
    text("REINICIAR", 430, 410);
    pop();
  }
}

void mouseClicked() {
  //pantalla++;
  if (pantalla > 2) {
    pantalla = 0;
  }
  if (dist (mouseX, mouseY, 550, 400) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
}
