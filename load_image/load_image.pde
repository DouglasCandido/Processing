/*
Descrição: Exibe uma imagem. 
*/

PImage imagem;

void setup() {
  
  size(800, 600);
  
  imagem = loadImage("naruto.png");
  
}

void draw() {
  
  image(imagem, 0, 0, 800, 600);
  
}
