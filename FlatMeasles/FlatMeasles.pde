//Global Variables
//
//Display Geometry
fullScreen(); //displayWidth, displayHeight 
//Landscape, not square or portrait 
println (width, height, displayWidth, displayHeight); //Verification of values
//Display Orientation
//Computer TElls us the orientation, important for Cell Phone Orientation
//if ( width >= height) {println("Landscape or Square");} else {println("Portrait");}
String orientation = ( width >= height ) ? "Landscape or Square": "Portrati"; //Ternary Operator, repeats IF-ELSE
println("Display Orientation:", orientation); //Verify variables 
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
//
//Face
//Center a circle on display orientation
rect();
//
//Left Eye
//rect();
//
//Right Eye
//rect();
//
//Nose
//rect();
//
//Mouth
//rect();
//
//Measle
//rect();
