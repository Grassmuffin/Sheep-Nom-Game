PImage Sheepwalk1;
PImage Sheepwalk2;
PImage Sheepwalk3;
PImage Sheepwalk4;
PImage Sheepwalk1M;
PImage Sheepdown;
PImage Grass;
PImage Bg;
float Sy=500;
float Sx=500;
float Speed=1.5;


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

  size(1920, 1035);
}

void draw()
{
  background(#92B423);
  image (Bg, 0, 0);


  if (keyPressed) {
    if (key == 'e' || key == 'E') {
      image(Grass, 800, 500);
      image(Sheepdown, Sx, Sy);
    }

    if (key == 'w' || key == 'W')
    {
      Sy = Sy - Speed;
      image(Grass, 800, 500);
      image(Sheepwalk1, Sx, Sy);
    }

    if (key == 's' || key == 'S')
    {
      Sy = Sy + Speed;
      image(Grass, 800, 500);
      image(Sheepwalk1, Sx, Sy);
    }

    if (key == 'a' || key == 'A')
    {
      Sx = Sx - Speed;
      image(Grass, 800, 500);
      image (Sheepwalk1M, Sx, Sy);
    }

    if (key == 'd' || key == 'D')
    {
      Sx = Sx + Speed;
      image(Grass, 800, 500);
      image(Sheepwalk1, Sx, Sy);
   
      
      
    }
    //image(Grass, 800, 500);
    //image(Sheepwalk1, Sx, Sy);
  }
    else
    {
     image(Grass, 800, 500);
     image(Sheepwalk1, Sx, Sy);
    }
 
}