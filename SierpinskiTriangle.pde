int moor = 8;
public void setup() {
  size (400, 400);
  background (0);
  noStroke();
}
public void draw() {
  fill(0);
  rect(0,0,400,400);
  sierpinski(50, 350, 300);
}

public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (moor<=16) {
        moor *= 2;
      }
    } else if (keyCode == DOWN) {
      if (moor>=2) {
        moor /= 2;
      }
    }
  }
}

public void sierpinski(int x, int y, int len) 
{
  if (len<=moor) {
    fill(255);
    triangle(x, y, x+len/2, y+len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
