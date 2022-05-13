//Global Varaibles
float rectWidth, rectHeight, ptDiameter;
color black=0, resetWhite=255, red=color(255, 0, 0); //Not night mode (lots of Blue)
//Points are organized by row and actually ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
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
  //
  //Next Four FOR Loops can be grouped because CODE is similar
  for ( int j=0; j<4; j++ ) {
    for ( int i=1; i<ptX.length; i+=4 ) {
      ptX[i+j] = appWidth*j/3.0;
    }
  }
  //
  //Next Four FOR Loops can be grouped becuase code is similar
  int i=0;
  int j=0;
  int k=0;
  while ( i<13 && j<4) {
    for ( k=1+i; k<5+i; k++ ) {
      //println("i-sequence", i, "Produces Array Number", j, "and appHeight index", k);
      ptY[k] = appHeight*j/3.0;
    }
    i+=4;
    j++;
  }
  //
  printArray(ptX);
  printArray(ptY);
}//End setup
//
void draw()
{
  //Rectangles matrix must be 3 by 3
  //Next Three FOR Loops can be grouped becuase code is similar
  for ( int j=0; j<9; j+=4 ) {
    for ( int i=1+j; i<4+j; i++ ) {
      rect(ptX[i], ptY[i], rectWidth, rectHeight);
      fill(black);
      ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
      fill(resetWhite); //Best Practice
    }
  }
  //Points for all other ellipses must be red
  //Next two FOR loops cannot be combined due to output of different amounts
  fill(red);
  for ( int i=4; i<16; i+=4 ) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  } //Output 3 lines of code
  for ( int i=13; i<17; i++ ) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  } //Output 4 lines of code
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
