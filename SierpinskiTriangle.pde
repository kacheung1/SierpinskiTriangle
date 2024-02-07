public void setup()
{
size(600,600);
background(0);
}
public void draw()
{
// call sierpinksi
fill(#F6FF03);
sierpinski(5, 500
, 500);
}

public void sierpinski(int x, int y, int len) 
{
if (len<=10)
{
 triangle(x,y,x+len/2, y-len/2, x+len, y+len/2); // check arguments 3,4,5,6
 //idk waht to put here
}
else 
{
  //1. recursively call the sierpinksi function to draw a triangle with the left corner at (x,y) and a base and height equal to len/2.
//2. Again, call the sierpinksi function a second time to draw another triangle a distance of len/2 to the right of the first triangle.
//3. Now, call the sierpinksi function a third time to draw a triangle a distance of len/4 to the right and len/2 up from the first triangle. This triangle should "sit on top" of the first two.

  sierpinski(x, y, len/2); //top (1
  sierpinski(x+len/2, y,len/2); //left 2
  sierpinski(x+len/2, y-len/2, len/2); // going down 3
  
}
}
