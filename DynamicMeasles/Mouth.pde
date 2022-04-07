void mouthDraw () {
  //Mouth
  int mouthWidth = int ( mouthX2 - mouthX1 ); 
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthOpen*1/2, mouthY1-mouthOpen*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1pixel
  //
}//End mouthDraw
