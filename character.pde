class weatherMan{
  
  float r;
  float g;
  float b;
  void character(){
    //This line draws the little character at the end of the clif
    //This draws the arm
    stroke(2);
    line(310,210,290,200);
    //This sets the color for the robe
    noStroke();
    fill(73, 191, 108);
    triangle(310,190,300,235,330,235);
    //this draws the head
    fill(213,219,214);
    circle(310,185,15);
    
    //This draws the staff
    noStroke();
    fill(117, 110, 86);
    rect(290,180,2,55);
    
  }
  
  void sun(){
    noStroke();
    fill(227, 220, 79);
    //This is the glowing top part of the staff
    circle(291,180,12);
    
    //This draws the shaddow
    fill(87, 92, 89);
    triangle(320,220,350,235,320,235);
    
    //This redraws the robe
    noStroke();
    fill(73, 191, 108);
    triangle(310,190,300,235,330,235);
    
    //These are the sun that is created at the top left as well as the sun beams that come off of it in order from bottom left to 
    //top right
    fill(227, 220, 79);
    circle(0,0,150);
    triangle(20,15,50,400,100,400);
    triangle(20,15,250,400,300,400);
    triangle(15,15,400,370,400,320);
    triangle(20,15,400,220,400,170);
    triangle(25,15,400,100,400,50);
  }

}
