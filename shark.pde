//These are the floats that are manipulated to draw the shark
float sharkCenterX = mouseX;
float sharkCenterY = mouseY;

class shark {


  //This is what draws the shark on the lose screen
  void sharkDrawing(){
    
    //This is what uses the constrain function to prevent the shark from going offscreen with the mouse x and y
    float sharkCenterX = constrain(mouseX,100,300);
    float sharkCenterY = constrain(mouseY,100,300);
    fill(13, 144, 191);
    ellipseMode(CENTER);
    stroke(1);
    ellipse(sharkCenterX,sharkCenterY,175,82);
    triangle(sharkCenterX + 80, sharkCenterY, sharkCenterX + 120, sharkCenterY - 40, sharkCenterX + 120, sharkCenterY + 40);
    triangle(sharkCenterX - 20, sharkCenterY- 40, sharkCenterX + 15, sharkCenterY - 70, sharkCenterX + 20, sharkCenterY - 40);
    ellipse(sharkCenterX,sharkCenterY,175,82);
    triangle(sharkCenterX - 20, sharkCenterY + 5, sharkCenterX +10, sharkCenterY + 25, sharkCenterX + 25, sharkCenterY + 5);
    ellipse(sharkCenterX- 50 ,sharkCenterY-20,20,20);
    fill(0, 0, 0);
    ellipse(sharkCenterX- 55 ,sharkCenterY-20,7,14);
    fill(255, 255, 255);
    triangle(sharkCenterX - 88, sharkCenterY, sharkCenterX - 60, sharkCenterY + 20, sharkCenterX-40, sharkCenterY );
    triangle(sharkCenterX - 88, sharkCenterY, sharkCenterX - 80, sharkCenterY + 20, sharkCenterX-70, sharkCenterY );
    triangle(sharkCenterX - 70, sharkCenterY, sharkCenterX - 80, sharkCenterY + 20, sharkCenterX-60, sharkCenterY + 20);
    triangle(sharkCenterX - 70, sharkCenterY, sharkCenterX - 60, sharkCenterY + 20, sharkCenterX - 50, sharkCenterY);
  }
  
}
