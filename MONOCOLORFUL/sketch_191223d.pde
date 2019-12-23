float boxSize=20;
float distance=30;
float halfDis;
int boxNum=6;
int angle;
void setup(){
  
  size(800,800,P3D);
  halfDis=distance*(boxNum-1)/2;
  angle=0;
}

void draw(){
  background(0);
  //stroke(255,0,0,100);
  //line(width/2,0,width/2,height);
  //line(0,height/2,width,height/2);
  
  translate(width/2,height/2);
  
    angle += 1;    
  if(angle > 360) angle = 0;    
  rotateY(radians(angle));
  rotateX(radians(angle*-1));
  stroke(0);
  fill(100,20,20);
  for(int z=0;z<boxNum;z++){
  for(int y=0;y<boxNum;y++){
    fill(random(150),random(150),random(150));
  for(int x=0;x<boxNum;x++){
    pushMatrix();
    translate(x*distance-halfDis,y*distance-halfDis,z*distance);
    box(boxSize,boxSize,boxSize);
    popMatrix();
  }
  }
  }
  
}
