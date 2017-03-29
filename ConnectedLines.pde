
ArrayList<Ring> ring = new ArrayList<Ring>();
boolean looping = true;
float distance = 100;
float ds = 0.2;
void setup(){
  size(800,600);
  background(25);
  for(int i = 0; i < 28; i++){
   ring.add(new Ring()); 
  }
}
void mouseClicked(){
 
 Ring r = new Ring();
 r.x = mouseX;
 r.y = mouseY;
 ring.add(r);
  if(looping){
   looping = false; 
   noLoop();
  } else{
   looping = true; 
   loop();
  }
}
void draw(){
  background(25);
  //distance += ds;
  //if(distance > 100 || distance < 0){
  // ds = ds *-1; 
  //}
   for(int i = 0; i < ring.size(); i++){
     ring.get(i).show();
     ring.get(i).update();
  }
   for(int i = 0; i < ring.size(); i++){
    for(int j = i; j < ring.size(); j++){
      if(dist(ring.get(i).x,ring.get(i).y,ring.get(j).x,ring.get(j).y) < distance){
        float dis = dist(ring.get(i).x,ring.get(i).y,ring.get(j).x,ring.get(j).y);
        float alpha = map(dis,distance,0,0,255);
        

        strokeWeight(2);
        stroke(255,alpha,200, alpha);
        line(ring.get(i).x,ring.get(i).y,ring.get(j).x,ring.get(j).y);

      }
   }   
   }
   
  }
  
  
  void keyPressed(){
   if(keyCode ==  UP){
    distance += 5; 
   }else if(keyCode == DOWN){
    distance -= 5; 
   }
    
  }