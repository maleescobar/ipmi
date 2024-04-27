//tp1
//Malena Escobar Escudero
//Comisión 5

PImage naranja;


void setup(){ 
 size (800,400);
 naranja = loadImage("naranja1.jpg");
}

void draw (){
background (255);
image (naranja, 0, 60, 360, 260);
noStroke();
fill (255, 160, 0);
circle (590, 200, 210); 
fill (108, 38, 3);
rect(580, 76, 010, 20);
fill(20,147,4);
  beginShape();
  vertex(470,65);
  vertex(510, 115);
  vertex(582, 82);
  endShape();}
 
 void mouseClicked () {
   println (mouseX +400, mouseY); }

  

  
