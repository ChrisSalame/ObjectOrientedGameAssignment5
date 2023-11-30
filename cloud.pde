
  PVector cloudPosition;
  PVector cloudVelocity;

class cloud{
  
  
  //These are the created variables that are needed to move the clouds
  //from left to right at differing speeds
  cloud(){
  cloudPosition = new PVector(0,50);
  cloudVelocity = new PVector(0.75,0);
   
  }
  //this void is what has the cloud move from left to right of the screen, it adds the velocity to
  // to the clouds position moving it over
  void cloudMovement() {
    cloudPosition.add(cloudVelocity);
    
    //This resets the clouds position if it goes off screen
    if (cloudPosition.x > 475){
    cloudPosition.x = -25;
    cloudPosition.y = random(0,175);
  
  }
    
  }
  
  //This is what draws the cloud
  void showCloud(){
    noStroke();
    fill (255,255,255,200);
    circle(cloudPosition.x - 30,cloudPosition.y, 50);
    circle(cloudPosition.x + 10,cloudPosition.y, 50);
    circle(cloudPosition.x + 30,cloudPosition.y +30, 50);
    circle(cloudPosition.x + 50,cloudPosition.y, 50);
    circle(cloudPosition.x ,cloudPosition.y +30, 50);
    circle(cloudPosition.x ,cloudPosition.y -30, 50);
    circle(cloudPosition.x + 30 ,cloudPosition.y -30, 50);
  }
  
}
