class waterLevel{
  
  PVector waterLevelPosition;
  PVector waterLevelVelocity;
  
    waterLevel(){
  waterLevelPosition = new PVector(0,390);
  waterLevelVelocity = new PVector(0,-0.75);
   
  }
  //this void is what has the water level move from bottom to top of the screen
  void waterLevelMovement() {
    waterLevelPosition.add(waterLevelVelocity);
  }
  
  void waterDrawing() {
    noStroke();
    fill(66, 215, 245);
    rect(waterLevelPosition.x -25, waterLevelPosition.y , waterLevelPosition.x + 450, waterLevelPosition.y+850);
  
  }
  

}
