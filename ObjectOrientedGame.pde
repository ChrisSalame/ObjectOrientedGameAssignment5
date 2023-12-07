
//These are calling the classes from the other tabs
waterLevel wL = new waterLevel();
cloud CL= new cloud();
Rain R = new Rain();
flag F = new flag();
shark S = new shark();
weatherMan W = new weatherMan();

//this sets some of the variables which will be used for the water level and the background 
  boolean wLMaxHeight = false;
  boolean wLReset = false;
  float r;
  float g;
  float b;

void setup(){
  //This draws the background and sets the framerate
  size(400,400);
  background(99, 171, 219);
  frameRate(30);
  
  //This sets up th ergb settings which are used for the background so it changes color when the 
  //sun is used as well as seting up the neccacary variables for the flag
  r = 72;
  g = 116;
  b = 184;
  F.flagSetup();

}

void draw(){
  //This redraws the background with the new colors
  background(r,g,b);
  //this shows the player the instructions
  println("Press the mouse to reduce water level");
  //This starts the clouds movement in the background of the picture using PVector as well as
  // drawing the flagpole that stands behind the player
   CL.cloudMovement();
   CL.showCloud();
   F.flagPole();

  
  
  //This is the platform which the player is on
  fill(186, 196, 204);
  rect(325,225, 175, 60);
  fill(158, 171, 181);
  rect(300,225, 175, 40);
  fill(151, 163, 173);
  rect(275,225, 200, 20);
  fill(145, 196, 230);
  
  
  
  //This draws the player character, the water level, the water movement and the loss screen if it occurs.
  W.character();
  wL.waterLevelMovement();
  wL.waterDrawing();
  wL.lossScreen();
   
  //This if statment is what draws the rain and the water level if the mouse is not pressed. If it is, 
  //it draws the sun and reduces the water level. The if statment also changes the rgb values which are used for the
  //background of the game
  
  if(mousePressed == true){
    W.sun();
    wL.waterLevelDownMovement();
    wL.waterDrawing();
    r = 115;
    g = 179;
    b = 235;
  }else {
    //this draws the rain,reduces thge water level and changes the background color
    R.rainSpawner();
    R.rainShower();
    wL.waterDrawing();
    r = 72;
    g = 116;
    b = 184;
  }
  //This calls the void where the shark is drawn
  if (wLMaxHeight == true){
  S.sharkDrawing();
  }
  
}

//This void is what allows the player to reset the game. The if statment inside makes it so that if the player has lost
//they can press any key to restart the game
void keyReleased() {
  if ((mousePressed == false) && (wLMaxHeight == true)) {
    wLReset = true;
    
  } 
}

//This changes the color of the flag behind the player
void mouseReleased(){
  flagKey += 1;
  if (flagKey >= 9){
  flagKey = 1;
  } 
}
