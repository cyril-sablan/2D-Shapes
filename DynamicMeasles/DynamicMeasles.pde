//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthX2, mouthY1, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
float measleDiameter, measleRadius, measleX, measleY;
Boolean nightMode=false;
color measleColor, whiteReset;
float measleRectX, measleRectY, measleWidth, measleHeight;
//
void setup() 
{
  fullScreen(); //displayWidth, displayHeight 
  displaySetup();
  population();
  faceSetup();
}//End setup
//
void draw() 
{
  measleDraw(); 
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();
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
