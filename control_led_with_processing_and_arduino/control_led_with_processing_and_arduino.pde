/* 
Descrição: Controle de um LED através da interligação entre Arduino e Processing.
*/

import processing.serial.*;
import cc.arduino.*;

Arduino arduino; // Objeto da classe Arduino

int ledPin = 7; // O LED está conectado ao pino digital 7 do Arduino

void setup() {
  
  // println(Arduino.list()); - Para listar todas as portas seriais e mostrar em qual delas o Arduino está conectado
  
  // Instância do objeto arduino. this = parent name = relativo ao frame principal / Arduino.list()[0] = primeira porta serial listada / 57600 = velocidade de transmissão dos dados 
  arduino = new Arduino(this, Arduino.list()[0], 57600); 
  
  // Configuração do pino digital 7 do LED como saída
  arduino.pinMode(ledPin, Arduino.OUTPUT);
  
}

void draw() {
  
  // Acende o LED
  arduino.digitalWrite(ledPin, Arduino.HIGH);
  // Aguarda 1000 milissegundos (1 segundo)
  delay(1000);
  
  // Desliga o LED
  arduino.digitalWrite(ledPin, Arduino.LOW);
  // Aguarda 1 segundo
  delay(1000);
  
}

