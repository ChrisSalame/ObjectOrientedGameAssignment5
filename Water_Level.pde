class waterLevel{
  
  //These are the pvectors which allow me to move the water level up and down
  PVector waterLevelPosition;
  PVector waterLevelVelocity;
  PVector waterLevelDown;
  
  //This constructor helps define the values that go inside of the PVectors previously made so that 
  //they are ready to be used in the following voids
    waterLevel(){
  waterLevelPosition = new PVector(0,390);
  waterLevelVelocity = new PVector(0,-1);
  waterLevelDown = new PVector(0,1.75);
  }
  //this void is what has the water level move from bottom upwards
  void waterLevelMovement() {
    waterLevelPosition.add(waterLevelVelocity);
  }
  //This is what allows the water level to move downward and is called upon during the mouse 
  //pressed in the main tab
  void waterLevelDownMovement() {
    waterLevelPosition.add(waterLevelDown);
    if(waterLevelPosition.y > 400){
      waterLevelPosition.y = 400;
    }
  }
  //This is what draws the water
  void waterDrawing() {
    fill(0,0,0);
    float WHD = dist(310,185,310,waterLevelPosition.y); 
    textSize(14);
    text("Distance between Water and Head", 190, 20);
    text(WHD, 350, 40);
    noStroke();
    fill(66, 215, 245,215);
    rect(waterLevelPosition.x -25, waterLevelPosition.y , waterLevelPosition.x + 450, waterLevelPosition.y+850);
  
  }
  //This is the loss screen that plays when the water level reaches the players head.
  void lossScreen() {
    if(waterLevelPosition.y <= 180){
      fill(0, 0, 0);
      textSize(60);
      text("YOU LOSE", 80, 120);
      println("Press any key to restart");
      waterLevelPosition.y = 180;
      mousePressed = false;
      wLMaxHeight = true;
      flagKey = 0;
    }
    
    //This is what resets the water level
    if(wLReset == true){
      waterLevelPosition.y += 220;
      wLReset = false;
      wLMaxHeight = false;
      
    
    }
    
    
  }
  

}
