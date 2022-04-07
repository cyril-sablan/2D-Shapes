//Global Variables
float measleRectX, measleRectY, measleWidth, measleHeight;
float measleDiameter, measleRadius, measleX, measleY;
color measleColor;
void measleDraw() {
  //Measle
  measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25 ); //Range of measle size: small=*1/100, large=4xbigger (*1/25)
  measleRadius = measleDiameter*1/2;
  measleX = random( rectFaceX+measleRadius, ((rectFaceX+rectFaceWidth ) - measleRadius ) );
  measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight) - measleRadius ) );
  //color red=#FF0000, measleColor=red, blackReset=#030303; //Note: need range here too 
  nightMode=false; //Note: IF-ELSE similar to ternary operator
  measleColor = ( nightMode==false ) ? color ( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ) ; //ternary operator for day:night
  whiteReset=#FFFFFF;
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
}//End measleDraw
