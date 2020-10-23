 Beans [] colony = new Beans[500];
PImage img;
void setup()   
{     
  size(500, 500);
  img = loadImage("coffeeGrinder.png");
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Beans();
  }
}   
void draw()   
{    
  background(255);
  fill(100);
  image(img, 200, 300, 100, 200);
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}  
void mouseClicked() {
  setup();
}
class Beans    
{     
  int myX, myY, myColor;
  Beans() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  void move() {
    if ((myX >= 215 && myX <= 285) && (myY >= 300 && myY <= 400)) {
      myX = 10000;
      myY = 10000;
    } else if (mouseX > myX) {
      myX = myX + (int)(Math.random()*4);
    } else {
      myX = myX - (int)(Math.random()*4);
    }
    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*3);
    } else {
      myY = myY - (int)(Math.random()*3);
    }
  }
  void show() {
    fill(82, 54, 44);
    ellipse(myX, myY, 10, 5);
  }
}
