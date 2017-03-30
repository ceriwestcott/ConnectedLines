

class Ring{
  float x = random(0,width);
  float y = random(0, height);
  float xspeed = random(0,0.5);
  float tx = random(0,width);
  float ty = random(0,height);
  

  
  void show(){
    noFill();
    stroke(0,0);
    strokeWeight(4);
   ellipse(x,y,30,30); 
  }
  
 void update(){ 
  tx += 0.005;
  ty += 0.005;
  x = noise(tx);
  y = noise (ty);
  y = map(y,0,1,0,height);
  x = map(x, 0, 1, 0, width); 
 } 
}
