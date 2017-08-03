/*
Descrição: Desenha um retângulo ou uma elipse dependendo de qual botão do mouse for clicado.
*/

void setup() {
  size(800, 600);
  background(255);
  stroke(#FF0000);
}

void draw() {
 if(mousePressed && (mouseButton == LEFT)) {
  rect(mouseX, mouseY, 100, 100);
 }
 else if(mousePressed && (mouseButton == RIGHT)){
   ellipse(mouseX, mouseY, 100, 100);
 }
}
