PImage Sheepwalk1;
PImage Sheepwalk2;
PImage Sheepwalk3;
PImage Sheepwalk4;
PImage Sheepwalk1M;
PImage Sheepdown;
PImage Grass;
PImage Bg;
 float Sy=2000;
 float Sx=2000;
 float Speed=2;
 

void setup()
{
  Sheepwalk1 = loadImage("Esteemed_Sheep_1.png");
  Sheepwalk2 = loadImage("Esteemed_Sheep_2.png");
  Sheepwalk3 = loadImage("Esteemed_Sheep_3.png");
  Sheepwalk4 = loadImage("Esteemed_Sheep_4.png");
  Sheepwalk1M = loadImage("Esteemed_Sheep_1_Mirror.png");
  Sheepdown = loadImage("Esteemed_Sheep_Laying_Down.png");
  Grass = loadImage("Sheep_Grass.png");
  Bg = loadImage ("Sheep_Nom_Background.png");
  
  size(1920,1035);
  
  
}

void draw()
{
 
  
  background(#92B423);
  scale(1);
  image (Bg,0,0);
  

  
    if (keyPressed)
    {
      if (key == 'w' || key == 'W')
    {
      Sy = Sy - 10;
    }
    }
  
   
    
    
    if (keyPressed)
    {
      if (key == 's' || key == 'S')
    {
      Sy = Sy + 10;
    }
    }
    
     if (keyPressed)
    {
      if (key == 'a' || key == 'A')
    {
      Sx = Sx - 10;
    }
    }
    
     if (keyPressed)
    {
      if (key == 'd' || key == 'D')
    {
      Sx = Sx + 10;
    }
    }
  
  if (key == 'a' || key == 'A')
  {
  scale(0.25);
  image (Sheepwalk1M,Sx,Sy);
  }
  else
  {
  scale(0.25);
  image (Sheepwalk1,Sx,Sy);
  }
  
    
    
}