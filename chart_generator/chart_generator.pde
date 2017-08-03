/*
Descrição: Gerador de gráfico mais aprimorado que funciona com a interligação entre Arduino e Processing. Utiliza-se a variação do valor do potenciômetro.
*/

import processing.serial.*;
import cc.arduino.*;

Serial port;
String buff = "";
int NEWLINE = 10;

// Armazene os últimos 64 valores recebidos de forma que possamos desenhá-los
int[] values = new int[64];

void setup()
{
  size(800, 600);

  println("Portas seriais disponíveis:");
  println(Serial.list());

  // Use a primeira porta da lista (número 0). Mude esta parte
  // conforme a porta correspondente a sua placa Arduino. O último
  // parâmetro (9600) é a velocidade de comunicação. Ela
  // deve corresponder ao valor passado ao Serial.begin() em seu
  // esboço Arduino.
  port = new Serial(this, Serial.list()[0], 9600);  

  // se você conhecer o nome da porta usada pela placa Arduino, 
  // também pode especificá-la diretamente, como segue.
  //port = new Serial(this, "COM1", 9600);
}

void draw()
{
  background(53);
  stroke(#FF0000);

  // Desenhe os valores guardados com uma linha entre os pontos.
  for (int i = 0; i < 63; i++)
    line(i * 8, 255 - values[i], (i + 1) * 8, 255 - values[i + 1]);

  while (port.available() > 0)
    serialEvent(port.read());
}

void serialEvent(int serial)
{
  if (serial != NEWLINE) {
    // Armazene todos os caracteres na linha
    buff += char(serial);
  } else {
    // O final de cada linha é marcado com dois caracteres: um retorno
    // de carro e um nova linha.  Chegamos aqui porque temos um nova linha,
    // mas ainda precisamos excluir o retorno de carro.
    buff = buff.substring(0, buff.length()-1);

    // Transforme a string em inteiro. Dividimos por 4 porque
    // as entradas analógicas vão de 0 a 1023, enquanto que as cores
    // em Processing vão apenas de 0 a 255.
    int val = Integer.parseInt(buff)/4;

    // Limpe o valor contido em "buff"
    buff = "";

    // Desloque os valores existentes para liberar espaço para novos valores.
    for (int i = 0; i < 63; i++)
      values[i] = values[i + 1];

    // Inclua ao vetor o valor recebido
    values[63] = val;
  }
}
