Snowflake [] flakes;
void setup()
{
background(0);
 size(400, 400);
 flakes = new Snowflake [200];
  for (int i = 0; i < flakes.length; i++)
  {
    flakes[i] = new Snowflake();
  } 
}
void draw()
{
  strokeWeight(2);
  fill(255);
  for (int i = 0; i < flakes.length; i++)
  {
    flakes[i].erase();
    flakes[i].lookDown();
    flakes[i].move();
    flakes[i].wrap();
    flakes[i].show();
  }
}
void mouseDragged()
{
  noStroke();
  fill(155);
  ellipse(mouseX, mouseY, 15, 15);
  if (mouseButton == RIGHT)
  {
     noStroke();
     fill(0);
     ellipse(mouseX, mouseY, 20, 20);
  }
}

class Snowflake
{
  int x, y, clr;
  boolean isMoving;
  Snowflake()
  {
    x = (int)(Math.random()*400);
    y = (int)(Math.random()*400);
    isMoving = true;
    clr = 255;
  }


  void show()
  {
    fill(clr);
    ellipse(x, y, 2, 2);
    fill(0);
    noStroke();
    //rect(0, 390, 400, 30);
  }

  void lookDown()
  {
    if (isMoving == true && get(x, y+2) != color(0))
    {
      y--;
      //isMoving = false;
    }
  }
  

  void erase()
  {
    fill (0);
    ellipse(x, y, 4, 4);
  }


  void move()
  {
    if (isMoving == true)
    {
      y++;
    }

  }


  void wrap()
  {
    if ( y> 390)
    {
      y = 0;
      x = (int)(Math.random()*400);
      //ellipse((int)(Math.random()*400), y, 3, 3);
    }
  }
}


