/*
Descrição: Desenha uma elipse se um botão do mouse for pressionando, ou um retângulo caso nenhum botão do mouse seja pressionado. 
*/

void setup() {
 size(800, 600); 
}

void draw() {
 if(mousePressed) {
  ellipse(mouseX, mouseY, 100, 100); 
 }
 else {
   rect(mouseX, mouseY, 100, 100);
 }

}
