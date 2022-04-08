void population() {
  //Variable Population
  smallerDisplayDimension = appHeight; //ALWAYS in Landscape 
  reset = smallerDisplayDimension / smallerDisplayDimension; //returns "1"
  rectFaceX = (appWidth*5/9) - (smallerDisplayDimension*1/2);
  rectFaceY = appHeight*1/10;
  rectFaceWidth = smallerDisplayDimension*3/4; //Square Shape
  rectFaceHeight = smallerDisplayDimension*4/5; //Square Shape 
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
  //End Population
}
