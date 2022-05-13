//Global Varaibles
float rectWidth, rectHeight, ptDiameter;
color black=0, resetWhite=255, red=color(255, 0, 0); //Not night mode (lots of Blue)
//Points are organized by row and actually ... hint-hint ... value
float ptX1, ptY1, ptX2, ptY2, ptX3, ptY3, ptX4, ptY4; //Organized pts into rows
float ptX5, ptY5, ptX6, ptY6, ptX7, ptY7, ptX8, ptY8; //Notice of the patterns of the rows
float ptX9, ptY9, ptX10, ptY10, ptX11, ptY11, ptX12, ptY12;
float ptX13, ptY13, ptX14, ptY14, ptX15, ptY15, ptX16, ptY16;
//
void setup()
{
  size(900, 680); //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  ptX1 = appWidth*0;
  ptY1 = appHeight*0;
  ptX2 = appWidth*1/3;
  ptY2 = ptY1;
  ptX3 = appWidth*2/3;
  ptY3 = ptY1;
  ptX4 = appWidth*3/3;
  ptY4 = ptY1;
  ptX5 = ptX1;
  ptY5 = appHeight*1/3;
  ptX6 = ptX2;
  ptY6 = ptY5;
  ptX7 = ptX3;
  ptY7 = ptY5;
  ptX8 = ptX4;
  ptY8 = ptY5;
  ptX9 = ptX1;
  ptY9 = appHeight*2/3;
  ptX10 = ptX2;
  ptY10 = ptY9;
  ptX11 = ptX3;
  ptY11 = ptY9;
  ptX12 = ptX4;
  ptY12 = ptY9;
  ptX13 = ptX1;
  ptY13 = appHeight*3/3;
  ptX14 = ptX2;
  ptY14 = ptY13;
  ptX15 = ptX3;
  ptY15 = ptY13;
  ptX16 = ptX4;
  ptY16 = ptY13;
  //
}//End setup
//
void draw()
{
  //Rectangles matrix must be 3 by 3
  rect(ptX1, ptY1, rectWidth, rectHeight);
  rect(ptX2, ptY2, rectWidth, rectHeight);
  rect(ptX3, ptY3, rectWidth, rectHeight);
  rect(ptX5, ptY5, rectWidth, rectHeight);
  rect(ptX6, ptY6, rectWidth, rectHeight);
  rect(ptX7, ptY7, rectWidth, rectHeight);
  rect(ptX9, ptY9, rectWidth, rectHeight);
  rect(ptX10, ptY10, rectWidth, rectHeight);
  rect(ptX11, ptY11, rectWidth, rectHeight);
  //
  //Starting pts for rect() must be 1-9 & filled black
  fill(black);
  ellipse(ptX1, ptY1, ptDiameter, ptDiameter);
  ellipse(ptX2, ptY2, ptDiameter, ptDiameter);
  ellipse(ptX3, ptY3, ptDiameter, ptDiameter);
  ellipse(ptX5, ptY5, ptDiameter, ptDiameter);
  ellipse(ptX6, ptY6, ptDiameter, ptDiameter);
  ellipse(ptX7, ptY7, ptDiameter, ptDiameter);
  ellipse(ptX9, ptY9, ptDiameter, ptDiameter);
  ellipse(ptX10, ptY10, ptDiameter, ptDiameter);
  ellipse(ptX11, ptY11, ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
  //
  //Points for all other ellipses must be red
  fill(red);
  ellipse(ptX4, ptY4, ptDiameter, ptDiameter);
  ellipse(ptX8, ptY8, ptDiameter, ptDiameter);
  ellipse(ptX12, ptY12, ptDiameter, ptDiameter);
  ellipse(ptX13, ptY13, ptDiameter, ptDiameter);
  ellipse(ptX14, ptY14, ptDiameter, ptDiameter);
  ellipse(ptX15, ptY15, ptDiameter, ptDiameter);
  ellipse(ptX16, ptY16, ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
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
