PImage sheepwalk1;
PImage sheepwalk2;
PImage sheepwalk3;
PImage sheepwalk4;
PImage sheepwalk1m;
PImage sheepdown;
PImage grass;
PImage bg;
float sy=500;
float sx=500;
float speed=2;
float gx;
float gy;
float gw = 70;
float gh = 70;
float hbx;
float hby;
boolean grassVis = true;


void setup()
{
  sheepwalk1 = loadImage("Esteemed_Sheep_1.png");
  sheepwalk2 = loadImage("Esteemed_Sheep_2.png");
  sheepwalk3 = loadImage("Esteemed_Sheep_3.png");
  sheepwalk4 = loadImage("Esteemed_Sheep_4.png");
  sheepwalk1m = loadImage("Esteemed_Sheep_1_Mirror.png");
  sheepdown = loadImage("Esteemed_Sheep_Laying_Down.png");
  grass = loadImage("Sheep_Grass.png");
  bg = loadImage ("Sheep_Nom_Background.png");

  size(1920, 1035);
}

void draw()
{
  background(#92b423);
  image (bg, 0, 0);
  gx = 1100;
  gy = 700;
  hbx = sx + 160;
  hby = sy + 125;

  if (keyPressed) {
    if (key == 'e' || key == 'E') {
      if (grassVis){
        image(grass, gx, gy);
      }
      image(sheepdown, sx, sy);
      if ((hbx > gx) && (hbx < gx+gw) && (hby > gy) && (hby < gy+gh))
      {
      grassVis = false;
      }
    }

    if (key == 'w' || key == 'W')
    {
      sy = sy - speed;
      if (grassVis){
        image(grass, gx, gy);
      }
      image(sheepwalk1, sx, sy);
    }

    if (key == 's' || key == 's')
    {
      sy = sy + speed;
      if (grassVis){
        image(grass, gx, gy);
      }
      image(sheepwalk1, sx, sy);
    }

    if (key == 'a' || key == 'A')
    {
      sx = sx - speed;
      if (grassVis){
        image(grass, gx, gy);
      }
      image (sheepwalk1m, sx, sy);
    }

    if (key == 'd' || key == 'D')
    {
      sx = sx + speed;
      if (grassVis){
        image(grass, gx, gy);
      }
      image(sheepwalk1, sx, sy); 
    }
   

  
  }else {
     if (grassVis){
        image(grass, gx, gy);
      }
     image(sheepwalk1, sx, sy);
     fill(0,0);
     //rect(hbx,hby,25,25);
     //rect(gx,gy,gw,gh);
    }

}