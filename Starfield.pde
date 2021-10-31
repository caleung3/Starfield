Particle[]  bob;
void setup(){
  size(800,800);
  strokeWeight(0);
  bob = new Particle[1000];
      bob[0] = new OddballParticle();
     bob[1] = new OddballParticle();
      bob[2] = new OddballParticle();
  for(int i = 3; i<bob.length; i++)
  {
    bob[i] = new Particle();
  }
  
}
void draw(){
  background(0);
  for(int i = 0; i<bob.length; i++)
  {
  bob[i].move();
  bob[i].show();
  }
    strokeWeight(23);
    stroke(255, 127, 0);
    fill(0);
    ellipse(400,400,180,180);
    noFill();
    strokeWeight(28);
    arc(400, 400, 200, 70, 0, PI, OPEN);
    strokeWeight(0);
    
}
class Particle{ 
  double myX,myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = myY = 400;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
myX = myX + Math.cos(myAngle)*mySpeed;
myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    strokeWeight(0);
    ellipse((int) myX, (int)myY, 10,10);
  }
}
  class OddballParticle extends Particle{
  OddballParticle()
  {
    myX = myY = 400;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
myX = myX + Math.cos(myAngle)*(mySpeed-5);
myY = myY + Math.sin(myAngle)*(mySpeed-5);
  }
  void show()
  {
    fill(245, 189, 31);
    stroke(255, 140, 0);
    strokeWeight(9);
   ellipse((int)myX, (int)myY, 80,80);
  }
}
