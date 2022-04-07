void displaySetup() {
  //Display Geometry
  //Landscape, not square or portrait 
  println (width, height, displayWidth, displayHeight); //Verification of values
  appWidth = displayWidth;
  appHeight = displayHeight;
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
}//End displaySetup
