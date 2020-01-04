
int Range=100;
int N=10;
public class Circle
{
  float x;
  float rad;
  float y;
  int count;
  int range;
  float colr;
  float colg;
  float colb;
  Circle(float _x, float _y, float _rad, float _colr, float _colg, float _colb, int _count, int _range)
  {
    x=_x;
    y=_y;
    rad=_rad;
    colr=_colr;
    colg=_colg;
    colb=_colb;
    count=_count;
    range=_range;
  }
  void paint(){
    int col;
    if(count>=range)col=range*2-count;
    else col=count;
    noFill();
    strokeWeight(4);
    stroke(colr*col,colg*col,colb*col);
    ellipse(x,y,rad,rad);
    if(count>range*2){
      count=0;
      x=random(width);
      y=random(height);
      rad=random(width)/2;
      colr=random(1);
      colg=random(1);
      colb=random(1);
    }
    count++;
    
  }
};
   

Circle[] circle; 

void setup()
{
  size(300, 300);
  colorMode(RGB, Range);
  frameRate(30); 
  circle = new Circle [ N ];
  for(int i = 0; i < N; i++)
  { 
     float x = random(width);
     float y = random(height);
     float rad = random(width) / 2;
     float colr = random(1);
     float colg = random(1);
     float colb = random(1);
     int count = (int)random(Range);
     circle[i] = new Circle(x, y, rad, colr, colg, colb, count, Range);//それぞれのCircleオブジェクトを作る
  }
}
void draw()
{
  background(0);
 for(int i = 0; i < N; i++)
   circle[i].paint(); 
}
