//GLobal Variables 

String title = "Measles!?";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color red=#FA0D0D, resetDefaultInk=#FFFFFF;

void textSetup() {
  titleX = displayWidth*1/5; 
  titleY = displayHeight*1/100;
  titleWidth = displayWidth*3/5; //Rect ends at 4/5's of width
  titleHeight = displayHeight*1/10; //Rect ends at 2/10's of height 
  titleFont = createFont("SimSun", 55);
  //rect(titleX, titleY, titleWidth, titleHeight);
}//End textSetup

void textDraw() {
  fill(red); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASEMENT ]
  textFont(titleFont, 100); //Change the number until it fits 
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
}//End textDraw
