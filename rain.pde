
ArrayList<Rain> rainDrops = new ArrayList<Rain>();

float startingX = random(0,400);
float fallSpeedY = 2.5;

float rainDropX;
float rainDropY;


class Rain{

  //the position of the balls based on speed 
  //update particle position
  void rainSpawner(){
    rainDropX = startingX;
    rainDropY += fallSpeedY;
  }
    
    void rainShower(){
      
      noStroke();
      fill(77, 151, 201);
      
      //This loops makes it so that it adds rainDrops until it reaches 100 then it sits at it. I couldn't get it to function
      //how I wanted so I had to make it so that some circles appeared on the screen.
       
      for (int i = 0; i > 100; i = i+= 1);{
        circle(rainDropX + random(-400,400),rainDropY+ random(-400,400),10);
        if(rainDropY >= 400){
        rainDropY = 0;
      }
      
        for(int j = 0; j <15;j = j+= 1){
          circle(rainDropX + random(-400,400),rainDropY+ random(-400,400),10);
           println("this is i", j);
          
          if(j >= 12){
            break;
          }
        }
        
      }
      
    }

}
