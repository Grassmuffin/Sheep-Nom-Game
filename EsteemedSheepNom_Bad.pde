PImage Sheepwalk1;
PImage Sheepwalk2;
PImage Sheepwalk3;
PImage Sheepwalk4;
PImage Sheepdown;
PImage Grass;
 float Sy=15;
 float Sx=15;

void setup()
{
  Sheepwalk1 = loadImage("Esteemed_Sheep_1.png");
  Sheepwalk2 = loadImage("Esteemed_Sheep_2.png");
  Sheepwalk3 = loadImage("Esteemed_Sheep_3.png");
  Sheepwalk4 = loadImage("Esteemed_Sheep_4.png");
  Sheepdown = loadImage("Esteemed_Sheep_Laying_Down.png");
  Grass = loadImage("Sheep_Grass");
  
  size(1980,1024);
  
  
}

void draw()
{
 
  
  background(#92B423);
  
  
  
    if (key == 'w' || key == 'W')
    {
  Sy = Sy - 10;
  
  if (Sy == 900)
  {
    Sy = 15;
  }
    }
    
    
    if (key == 's' || key == 'S')
    {
      Sy = Sy + 10;
    }
  
  scale(0.5);
  image (Sheepwalk1,600,Sy);
}