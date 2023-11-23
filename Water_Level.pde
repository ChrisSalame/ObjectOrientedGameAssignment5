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
  }
  
  void waterDrawing() {
    noStroke();
    fill(66, 215, 245);
    rect(waterLevelPosition.x -25, waterLevelPosition.y , waterLevelPosition.x + 450, waterLevelPosition.y+850);
  
  }
  

}
