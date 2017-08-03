/* 
Descrição: Desenha uma linha que inicia estática em um ponto e segue o movimento do cursor do mouse. Se um botão do mouse for clicado as cores do plano de fundo e da
linha mudam e então surge uma elipse que acompanha o movimento do mouse (enquanto estiver com o botão pressionado) .
*/


void setup() {
   size(800, 600);
   background(255);
   stroke(0);
} 

void draw() {
  line(400, 300, mouseX, mouseY);
  if(mousePressed) {
    background(#00F9FF);
    stroke(#FEFF00);
    fill(#FEFF00);
    ellipse(mouseX, mouseY, 100, 100);
  }
}
