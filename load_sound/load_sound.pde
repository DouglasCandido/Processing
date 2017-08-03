/*
Descrição: Toca uma música.
*/

import processing.sound.*;

SoundFile file;

void setup() {
  
  size(640, 360);
  background(255);
    
  file = new SoundFile(this, "Play Hard.mp3");
  file.play();
  
}      

void draw() {
}
