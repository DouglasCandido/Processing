/*
Descrição: Exibe uma animação.
*/

Animation animation1;

float xpos;
float ypos;
float drag = 30.0;

void setup() {
  
  size(200, 200);
  background(255, 255, 255);
  frameRate(5);
  
  animation1 = new Animation("heart", 4);
  
}

void draw() { 

  // Exibe a imagem nas coordenadas x e y especificadas como parâmetros do método
  animation1.display(10, 10);

}

// Classe que cria uma animação baseada na quantidade de imagens .gif
class Animation {
  
  PImage[] images;
  int imageCount;
  int frame;
  
  Animation(String imagePrefix, int count) {
    
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      
      // nf() formata "i" em um número de 4 dígitos e concatena em uma string que representará o nome do arquivo
      String filename = imagePrefix + nf(i, 4) + ".gif";
      images[i] = loadImage(filename);
      
    }
    
  }

  // Exibe a imagem nas coordenadas especificadas como parâmetro
  void display(float xpos, float ypos) {
    
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
    
  }
  
}

