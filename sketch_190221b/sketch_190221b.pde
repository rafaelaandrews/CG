float solX, solY, terraX, terraY, luaX, luaY;
float rSol, rTerra, rLua;
float thetaTerra = PI/300, thetaLua = PI/300;
  

void setup(){
  size(600,600);
  rectMode(CENTER);
  solX = width/2;
  solY = height/2;
  rSol = 0.20 * width;
  rTerra = 0.50 * rSol;
  rLua = 0.50 * rTerra;
  
  terraX = solX + 1.3*rSol;
  terraY = solY;
  
  luaX = terraX + 1.1*rTerra;
  luaY = terraY;
}

void draw(){
  background(15);
  fill(255,235,100);
  circle(solX,solY,rSol);
  fill(50,50,255);
  circle(terraX,terraY,rTerra);
  fill(170,170,170);
  circle(luaX,luaY,rLua);
  
  terraX -= solX;
  terraY -= solY;
  
  float novoTerraX = (terraX * cos(thetaTerra) + terraY * sin(thetaTerra)) + solX;
  float novoTerraY = (terraY * cos(thetaTerra) - terraX * sin(thetaTerra)) + solY;
  
  terraX = novoTerraX;
  terraY = novoTerraY;
  
  luaX -= solX;
  luaY -= solY;
  
  float novoLuaX = (luaX * cos(thetaTerra) + luaY * sin(thetaTerra)) + solX;
  float novoLuaY = (luaY * cos(thetaTerra) - luaX * sin(thetaTerra)) + solY;
    
  luaX = novoLuaX;
  luaY = novoLuaY;
  
  luaX -= terraX;
  luaY -= terraY;
    
  novoLuaX = (luaX * cos(thetaLua) + luaY * sin(thetaLua)) + terraX;
  novoLuaY = (luaY * cos(thetaLua) - luaX * sin(thetaLua)) + terraY;
  
  luaX = novoLuaX;
  luaY = novoLuaY;
 

}
