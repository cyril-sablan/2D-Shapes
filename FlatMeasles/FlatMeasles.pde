//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthX2, mouthY1, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
//Display Geometry
fullScreen(); //displayWidth, displayHeight 
//Landscape, not square or portrait 
int appWidth = displayWidth, appHeight = displayHeight;
println (width, height, displayWidth, displayHeight); //Verification of values
println(appWidth, appWidth); //Canvas Flexibility 
//
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
//Variable Population
smallerDisplayDimension = appHeight; //ALWAYS in Landscape 
reset = smallerDisplayDimension / smallerDisplayDimension; //returns "1"
rectFaceX = (appWidth*1/2) - (smallerDisplayDimension*1/2);
rectFaceY = appHeight*0;
rectFaceWidth = smallerDisplayDimension; //Square Shape
rectFaceHeight = smallerDisplayDimension; //Square Shape 
faceX = appWidth*1/2;
faceY = appHeight*1/2;
faceDiameter = smallerDisplayDimension;
leftEyeX = appWidth*5/8;
rightEyeX = appWidth*3/8;
leftEyeY = appHeight*3/8;
rightEyeY = leftEyeY; //BestPractice: change one line of code 
eyeDiameter = smallerDisplayDimension*1/4;
mouthX1 = leftEyeX;
mouthY1 = appHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
mouthOpen = smallerDisplayDimension*1/4;
xNose1 = faceX;
yNose1 = leftEyeY;
xNose2 = faceX - leftEyeY*1/4;
yNose2 = faceY ;
xNose3 = faceX + leftEyeY*1/4;
yNose3 = faceY ;
//
//Face: Circle = Inscribing a Circle in a Square 
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter); 
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
//
//Mouth
//rect();
strokeWeight(mouthOpen); //testing: mouthOpen=height*1/4
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset); //reset to 1pixel
//
//Measle
float measleDiameter = smallerDisplayDimension*1/50; //Range of measle size: small=*1/100, large=4xbigger (*1/25)
float measleRadius = measleDiameter*1/2;
float measleX = random( rectFaceX+measleRadius , ((rectFaceX+rectFaceWidth ) - measleRadius ) );
float measleY = random( measleRadius , appHeight-measleRadius );
color red=#FF0000, measleColor=red, blackReset=#030303; //Note: need range here too 
//rect();
//random values given other variables (similar to button code)
noStroke(); //Shape outline
fill(measleColor);
ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
stroke(reset); //reset to 1 pixel
fill(blackReset); //reset to first color 
