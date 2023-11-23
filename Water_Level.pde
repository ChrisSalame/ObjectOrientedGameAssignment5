class waterLevel{
  
  PVector waterLevelPosition;
  PVector waterLevelVelocity;
  PVector waterLevelDown;
  
    waterLevel(){
  waterLevelPosition = new PVector(0,390);
  waterLevelVelocity = new PVector(0,-0.75);
  waterLevelDown = new PVector(0,1.75);
  }
  //this void is what has the water level move from bottom to top of the screen
  void waterLevelMovement() {
    waterLevelPosition.add(waterLevelVelocity);
  }
  
  void waterLevelDownMovement() {
    waterLevelPosition.add(waterLevelDown);
    if(waterLevelPosition.y > 400){
      waterLevelPosition.y = 400;
    }
  }
  
  void waterDrawing() {
    noStroke();
    fill(66, 215, 245);
    rect(waterLevelPosition.x -25, waterLevelPosition.y , waterLevelPosition.x + 450, waterLevelPosition.y+850);
  
  }
  
  void lossScreen() {
    if(waterLevelPosition.y <= 180){
      fill(0, 0, 0);
      textSize(60);
      text("YOU LOSE", 80, 120);
      println("Press any key to restart");
      waterLevelPosition.y = 180;
      mousePressed = false;
      wLMaxHeight = true;
    }
    
    if(wLReset == true){
      waterLevelPosition.y += 220;
      wLReset = false;
      wLMaxHeight = false;
      
    
    }
    
    
  }
  

}
