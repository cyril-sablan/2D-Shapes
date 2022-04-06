//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthX2, mouthY1, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
float measleRectX, measleRectY,  measleWidth,  measleHeight;
//
void setup() 
{
  //Display Geometry
  fullScreen(); //displayWidth, displayHeight 
  //Landscape, not square or portrait 
  int appWidth = displayWidth, appHeight = displayHeight;
  println (width, height, displayWidth, displayHeight); //Verification of values
  println(appWidth, appWidth); //Canvas Flexibility
  //Display Orientation: a few comparisons for IFS
  //Purpose: a few comparisions of IFs and ID orientation (similar to image() aspect ratio calculations)
  //Computer TElls us the orientation, important for Cell Phone Orientation
  //if ( width >= height) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Scare", p="Portrait", DO="Display Orientation:", instruct="Bruhh, turn your phone";
  String orientation = ( width >= height ) ? "Landscape or Square": "Portrati"; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation); //Verification of value
  if ( orientation=="Portrait" ) println("Turn your phone"); 
  /*
if ( orientation=="Landscape or Square") {
   //Empty IF
   } else { 
   println("Turn your phone"); //FUN
   }
   */
  //

  //Face: Circle = Inscribing a Circle in a Square 
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter); 
  //
}//End setup
//
void draw() 
{
  //Measle
  float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25 ); //Range of measle size: small=*1/100, large=4xbigger (*1/25)
  float measleRadius = measleDiameter*1/2;
  float measleX = random( rectFaceX+measleRadius, ((rectFaceX+rectFaceWidth ) - measleRadius ) );
  float measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight) - measleRadius ) );
  //color red=#FF0000, measleColor=red, blackReset=#030303; //Note: need range here too 
  Boolean nightMode=false; //Note: IF-ELSE similar to ternary operator
  color measleColor = ( nightMode==false ) ? color ( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ) ; //ternary operator for day:night
  color whiteReset=#FFFFFF; 
  //
  measleRectX = measleX-measleDiameter*1/2;
  measleRectY = measleY-measleDiameter*1/2;
  measleWidth = measleDiameter;
  measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );

  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColor);
  ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first color 
  //
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Nose
  //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
  //Mouth
  int mouthWidth = int ( mouthX2 - mouthX1 ); 
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthOpen*1/2, mouthY1-mouthOpen*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1pixel
  //
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
