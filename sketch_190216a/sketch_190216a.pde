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
 
  int sec = second();
  int min = minute();
  int hora = hour();

  beginShape();
    float anguloSec = (TWO_PI*sec/60)-HALF_PI;
    float anguloMin = (TWO_PI*min/60)-HALF_PI;
    float anguloHora = (TWO_PI*hora/12)-HALF_PI;
    
    strokeWeight(15);
    circle(0,0,raio/20);
    
    strokeWeight(8);
    line(0,0,0.60*raio*cos(anguloHora),0.60*raio*sin(anguloHora));
    strokeWeight(6);
    line(0,0,0.87*raio*cos(anguloMin),0.87*raio*sin(anguloMin));
    strokeWeight(5);
    line(0,0,0.92*raio*cos(anguloSec),0.92*raio*sin(anguloSec));  

    for(int i=0;i<360;i=i+6){
      line(0.95*raio*cos((i*PI)/180),0.95*raio*sin((i*PI)/180),raio*cos((i*PI)/180),raio*sin((i*PI)/180));
    }
    
    for(int i=0;i<360;i=i+30){
    line(0.90*raio*cos((i*PI)/180),0.90*raio*sin((i*PI)/180),raio*cos((i*PI)/180),raio*sin((i*PI)/180));
    }

  endShape(CLOSE);
}

   
