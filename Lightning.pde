float x, y;
float prevX, prevY;
float inc = 1;
float inp;

void setup() {
  size(400, 600);
  background(0);
}
void draw() {
  inp = (float)Math.random();

  if (inp < .3) {  //want 30% execution here
    y = 500;
    x = 350;
  } else if (inp < .6) {  //want 60% execution here
    y = 400;
    x = 150;
  } else if (inp > 0.9) {    //want 10% execution here
    y = 600;
    x = 225;
  }
}
void createLightning() {
  while (y >= 0) {
    stroke(255, 0, 0, 200);
    prevX = x;
    prevY = y;
    x += inc*((int)(Math.random()*3)-1);
    y -= inc*((int)(Math.random()*8)-2);
    line(prevX, prevY, x, y);
    //ellipse(x, y, 1, 1);
  }
}
void mousePressed() {
  createLightning();
}
