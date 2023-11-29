waterLevel wL = new waterLevel();

cloud CL= new cloud();

Rain R = new Rain();

weatherMan W = new weatherMan();

  boolean wLMaxHeight = false;
  boolean wLReset = false;
  float r;
  float g;
  float b;

void setup(){
  size(400,400);
  background(99, 171, 219);
  frameRate(30);
  println("Press the mouse to reduce water level");
  
   r = 72;
   g = 116;
   b = 184;
  
  
  
}

void draw(){
  background(r, g,b);
  
  //This starts the clouds movement in the background of the picture using PVector
   CL.cloudMovement();
   CL.showCloud();

  
  
  //This is the platform
  fill(186, 196, 204);
  rect(325,225, 175, 60);
  fill(158, 171, 181);
  rect(300,225, 175, 40);
  fill(151, 163, 173);
  rect(275,225, 200, 20);
  
  fill(145, 196, 230);
  
  //This draws the little character
  W.character();
  wL.waterLevelMovement();
  wL.waterDrawing();
  wL.lossScreen();
   
  //This is what pulls the rain variable and uses the class to draw the rain all over the screen
  
  if(mousePressed == true){
    W.sun();
    wL.waterLevelDownMovement();
    r = 115;
    g = 179;
    b = 235;
    
    
    
  } else {
    R.rainSpawner();
    R.rainShower();
    wL.waterDrawing();
    r = 72;
    g = 116;
    b = 184;
  }
  
}

void keyReleased() {
  if ((mousePressed == false) && (wLMaxHeight == true)) {
    wLReset = true;
    
  } 
}
