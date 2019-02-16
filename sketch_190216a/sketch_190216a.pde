void setup(){
  size(600,600);
  rectMode(CENTER);

}

void draw(){
  background(200);
  float raio = 0.45*width;
  float n = 3 + (80*mouseX/width);
  translate(width/2,height/2);
  ellipse(0,0,2*raio,2*raio);
  int sec = millis();
  int min = minute();
  int hora = hour();

  beginShape();
    Float teta = (TWO_PI*sec/60000)-HALF_PI;
    line(0,0,raio*cos(teta),raio*sin(teta));

  endShape(CLOSE);
}
