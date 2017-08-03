/*
Descrição: Desenha retângulos estáticos com o padrão de cores RGB.
*/

color[] colors = new color[7];

void setup() {
 
  size(800, 600);
  background(0);
  
  colors[0] = color(255);
  colors[1] = color(255, 0, 0);
  colors[2] = color(0, 255, 0);
  colors[3] = color(0, 0, 255);
  
}

void draw() {
 
  for(int i = 0; i < 4; i++){
   
    stroke(255);
    fill(colors[i]);
    rect(300 + (i * 50), 250, 50, 50);
    
  }
  
}
