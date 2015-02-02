void setup()
{
  size(400,400);
  colorMode(HSB);
  background(0);
  
  
}

float speed = 1;
float size_x = 50;
float size_y = 50;

int move_swich = 1;

float p1 = -size_x;
float p2 = 0;
float p3 = size_x;
float p4 = size_y;


void ene(float pos_x, float pos_y)
{ 
  
  rect(p1 + pos_x, p2 + pos_y, p3, p4);
  
  if(move_swich == 1)
    p1 += speed;
  else
    p1 -= speed;
  
  if(p1 > width || p1 < 0 - size_x)
  {
    if(p2 >= height - size_y)
    {
      p2 = 0;
      p1 = -size_x;
      move_swich = -move_swich;
    }
    else
    {
      p2 += size_x;
      move_swich = -move_swich;
    }
  }
  
 
}

void draw()
{
  background(255);
  ene(0,0);
  ene(-50 - 10,0);
  //ene(-size_x,0,1);
}
