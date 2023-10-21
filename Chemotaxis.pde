Thingy[] thing;
void setup()
{
  size(1000,1000);
  thing = new Thingy[500];
  for(int i = 0; i < thing.length; i++)
  {
    thing[i] = new Thingy();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < thing.length; i++){
  thing[i].doSomething();
  thing[i].uhhh();
  }
}
class Thingy
{
 int rgb;
 int myX, myY;
 Thingy()
 {
   myX = (int)(Math.random() * 1000);
   myY = (int)(Math.random() * 1000);
   rgb = color(255,0,0);
 }
  void doSomething()
  {
   if(500 > myX)
     myX += (int)(Math.random() * 5);
     else
     myX -= (int)(Math.random() * 5);
   if(500 > myY)
     myY += (int)(Math.random() * 5);
     else
     myY -= (int)(Math.random() * 5); 
  } 
  void uhhh()
  {
    if(dist(500, 500, myX, myY) < 10){
    myX = (int)(Math.random() * 1000);
    myY = (int)(Math.random() * 1000);
    if(rgb == color(0,255,0)){
      rgb = color (255,0,0);
    } else
    if(rgb == color(0,0,255)){
     rgb = color (0,255,0);
    } else
    if(rgb == color(255,0,0)){
     rgb = color (0,0,255);
    }    
    }
    fill(rgb);
    ellipse(myX, myY, 20, 20);
  }
}
