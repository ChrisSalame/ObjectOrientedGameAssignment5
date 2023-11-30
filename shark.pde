float sharkCenterX = mouseX;
float sharkCenterY = mouseY;
class shark {


  
  void sharkDrawing(){
    float sharkCenterX = constrain(mouseX,100,300);
    float sharkCenterY = constrain(mouseY,100,300);
    fill(13, 144, 191);
    ellipseMode(CENTER);
    ellipse(sharkCenterX,sharkCenterY,175,100);
    println(sharkCenterX);
    println(sharkCenterY);
    
  }
  
}
