/* 
Descrição: Desenha uma elipse onde o cursor do mouse está posicionado.
*/

void setup() {
  size(800, 600);
}

void draw() {
  if(mousePressed) {
    fill(0);
  }
  else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 100, 100);
}
