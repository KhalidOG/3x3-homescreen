//Global Variables
color black=0, resetWhite=255, red=color(255, 0, 0); //Not night mode (lots of Blue)
float rectWidth, rectHeight, ptDiameter;
//Points are organized by row and actaully ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
//
void setup()
{
  size(900, 650); //fillScreen(); //displayWidth, displayHeight
  displayOrientation();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  //
  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0/3;
  ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth*1/3;
  ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3;
  ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*3/3;
  //
  ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0/3;
  ptY[5] = ptY[6] = ptY[7] = ptY[8] = appHeight*1/3;
  ptY[9] = ptY[10] = ptY[11] = ptY[12] = appHeight*2/3;
  ptY[13] = ptY[14] = ptY[15] = ptY[16] = appHeight*3/3;
  //
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  rect(ptX[2], ptY[2], rectWidth, rectHeight);
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  fill(black);
  //Starting pts for rect() must be 1-9 & filled black
  ellipse(ptX[1], ptY[1], ptDiameter, ptDiameter);
  ellipse(ptX[2], ptY[2], ptDiameter, ptDiameter);
  ellipse(ptX[3], ptY[3], ptDiameter, ptDiameter);
  ellipse(ptX[5], ptY[5], ptDiameter, ptDiameter);
  ellipse(ptX[6], ptY[6], ptDiameter, ptDiameter);
  ellipse(ptX[7], ptY[7], ptDiameter, ptDiameter);
  ellipse(ptX[9], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[10], ptDiameter, ptDiameter);
  ellipse(ptX[11], ptY[11], ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
  //
  fill(red);
  //Points for all other ellipses must be red
  ellipse(ptX[4], ptY[4], ptDiameter, ptDiameter);
  ellipse(ptX[8], ptY[8], ptDiameter, ptDiameter);
  ellipse(ptX[12], ptY[12], ptDiameter, ptDiameter);
  ellipse(ptX[13], ptY[13], ptDiameter, ptDiameter);
  ellipse(ptX[14], ptY[14], ptDiameter, ptDiameter);
  ellipse(ptX[15], ptY[15], ptDiameter, ptDiameter);
  ellipse(ptX[16], ptY[16], ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
