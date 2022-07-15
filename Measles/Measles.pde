//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
int thack=8;
float xMeasle, yMeasle, MeasleDiameter;
color resetWhite= #FFFFFF, red=#BC0606; //Similar to int declaration
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); //Landscape
  //
  //Population
 xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choicesmallerDimension = ;
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter-smallerDimension*1/4;
  yLeftEye = yCenter-smallerDimension*1/20;
  xRightEye = xCenter+smallerDimension*1/4;
  yRightEye = yCenter-smallerDimension*1/20;
  eyeDiameter = smallerDimension*1/8;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/12;
  xLeftNostril = xCenter-smallerDimension*1/13;
  yLeftNostril = yCenter+smallerDimension*1/12;
  xRightNostril = xCenter+smallerDimension*1/13;
  yRightNostril = yLeftNostril;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  faceRadius = smallerDimension/2;
  //
  Boolean nightMode=true;
  color backgroundColour = ( nightMode==true ) ? color(random(255), random(255), 0 ) :  color(random(255), random(255), random(255) ); //ternary oporator, similar to IF-Else
  backgroundColour = color(random(255), random(255), random(255) );
  background( backgroundColour );
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
}//End setup
//
void draw() 
{
 
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeWeight(thack);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1); //resets default
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(0, smallerDimension); //if zero is first, then default 
  fill(red);
  noStroke ();
  MeasleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//smallerDimension*1/50;
  ellipse(xMeasle, yMeasle, MeasleDiameter, MeasleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
