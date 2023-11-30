
float flagR;
float flagG;
float flagB;
int flagKey = 0;

class flag{
  
  void flagSetup(){
    
    //int flagKey = constrain(flagKey,1,8);
    flagR = 201;
    flagG = 45;
    flagB = 34;

  }
  
  void flagPole(){
    fill(0,0,0);
    rect(358,80,2,160);
    fill(flagR,flagG,flagB);
    triangle(360,80,360,140,290,110);
    
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
