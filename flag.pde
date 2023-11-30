
//These floats are the rgb values which are used for the switch statements that change the color of the flag
float flagR;
float flagG;
float flagB;
int flagKey = 0;

class flag{
  //This void sets the flag to default colors
  void flagSetup(){
    flagR = 201;
    flagG = 45;
    flagB = 34;

  }
  //This is the code that draws the flagpole that stands behind the player
  void flagPole(){
    fill(0,0,0);
    rect(358,80,2,160);
    fill(flagR,flagG,flagB);
    triangle(360,80,360,140,290,110);
    
    //This switch statment makes it so that the color of the flag changes when the flag R G B change.
    switch(flagKey){
      case 1:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      break;
      case 2:
      flagR = 247;
      flagG = 255;
      flagB = 3;
      break;
      case 3:
      flagR = 17;
      flagG = 255;
      flagB = 0;
      break;
      case 4:
      flagR = 0;
      flagG = 255;
      flagB = 217;
      break;
      case 5:
      flagR = 0;
      flagG = 145;
      flagB = 255;
      break;
      case 6:
      flagR = 25;
      flagG = 0;
      flagB = 255;
      break;
      case 7:
      flagR = 208;
      flagG = 0;
      flagB = 255;
      break;
      case 8:
      flagR = 255;
      flagG = 0;
      flagB = 174;
      break;
      case 9:
      flagR = 255;
      flagG = 255;
      flagB = 255;
      break;
    }
     
  }

}
