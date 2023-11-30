
float flagR;
float flagG;
float flagB;

int flagKey = 0;

class flag{
  
  void flagSetup(){
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
      case 2:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      case 3:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      case 4:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      case 5:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      case 6:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      case 7:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      case 8:
      flagR = 201;
      flagG = 45;
      flagB = 34;
      case 9:
      flagR = 201;
      flagG = 45;
      flagB = 34;
    
    }
    
     
  }






}
