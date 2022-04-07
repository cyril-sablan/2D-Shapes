//Global Variables
float mouthX1, mouthX2, mouthY1, mouthY2;
int mouthOpen;
int mouthWidth = int ( mouthX2 - mouthX1 ); 
int mouthHeight = mouthOpen;
PImage pic1;
int pic1Width = 200;
int pic1Height = 200;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float pic1WidthAdjusted, pic1HeightAdjusted;
int largerPic1Dimension, smallerPic1Dimension;
void mouthDraw () {
  pic1 = loadImage("test3.png"); 
  rectXPic1 = displayWidth*1/2.7;
  rectYPic1 = displayHeight*3/5;
  rectWidthPic1 = displayWidth*1/4;
  rectHeightPic1 = displayHeight*1/4;
  println(pic1WidthAdjusted, pic1HeightAdjusted);
  println(pic1Width, pic1Height);
  image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
  fill(255,128);
  //Mouth
  //rect(mouthX1-mouthOpen*1/2, mouthY1-mouthOpen*1/2, mouthWidth+mouthOpen, mouthHeight);
  // strokeWeight(mouthOpen); //testing: mouthOpen=height*1/4
  //line(mouthX1, mouthY1, mouthX2, mouthY2);
  // strokeWeight(reset); //reset to 1pixel
  //
}//End mouthDraw
