//Global Variables
int appWidth, appHeight;
int reset, smallerDisplayDimension;
color whiteReset;
Boolean nightMode=false;
//
float eyeDiameter; 
//
void setup() 
{
  fullScreen(); //displayWidth, displayHeight 
  displaySetup();
  population();
  faceSetup();
  textSetup(); 
}//End setup
//
void draw() 
{
  measleDraw(); 
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();
  textDraw();
}//End draw
//
void keyPressed() 
{
}//End keyPressed
//
void mousePressed() 
{
}//End mousePressed 
//
//End Main Program
