  
void setup() 
{
  size(640, 360); //size of form
}

void draw() //loop
{
  background(102); //gray color
  pushMatrix();
    translate(width*0.5, height*0.5); //move the position to half of form size
    rotate(frameCount / 200.0); //20sec(?) = 1 rotate
    polygon(0, 0, 82, 3);
  popMatrix();
}


void polygon(float x, float y, float radius, int npoints) //npoints = number of vertex
                                                          //npoints : 3 means Triangle
{
  float angle = TWO_PI / npoints;  //pointing angle
  beginShape(); //start draw polygon
  for (float a = 0; a < TWO_PI; a += angle)
  {
    float sx = x + cos(a) * radius; //position x
    float sy = y + sin(a) * radius; //position y
    vertex(sx, sy); //pointing
  }
  endShape(CLOSE); //end draw polygon
}