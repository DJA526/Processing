int x = 200;
int y = 380;

void setup() {
  size(400, 400);
}

void draw() {
  fill(017, 204, 034);
  ellipse(x, y, 30, 30);
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        y-=8;
      }
      else if(keyCode == DOWN)
      {
        y+=8;
      }
      else if(keyCode == RIGHT)
      {
        x+=8;
      }
      else if(keyCode == LEFT)
      {
        x-=8;
      }
   }
}

void stayInCanvas() {
  if (key == CODED) {
     if (x == 400 && keyCode == RIGHT) {
             
     } 
  }
