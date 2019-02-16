void setup(){
  size(600,600);
  rectMode(CENTER);

}

void draw(){
  background(200);
  float raio = 0.45*width;
  float n = 3 + (80*mouseX/width);
  translate(width/2,height/2);
  circle(0,0,raio*2);
  
  int sec = millis();
  int min = minute();
  int hora = hour();

  beginShape();
    float anguloTeta = TWO_PI;
    float anguloSec = (TWO_PI*sec/60000)-HALF_PI;
    float anguloMin = (TWO_PI*min)-HALF_PI;
    float anguloHora = (TWO_PI*hora)-HALF_PI;

    line(0,0,raio*cos(anguloSec),raio*sin(anguloSec));
    strokeWeight(6);
    line(0,0,raio*cos(anguloMin),raio*sin(anguloMin));
   // line(0,0,raio*cos(),raio*sin());
    for(int i=0; i<11; i++){
      line(raio*cos(anguloHora),raio*sin(anguloHora),raio*cos(anguloHora)+i,raio*sin(anguloHora)+i);
    }
   
  endShape(CLOSE);
}
