
//This creates the array list that is used for the rain. The float vairables are what is used to have the 
//rain fall from the top of the screen to the bottom. The float which is randomized makes it so 
//that the particles have a random x value, This changes each frame making the rain appear random.
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
    //This grabs the size of an array list and prints the size at the bottom
    int arrayListSize = rainDrops.size();
    println(arrayListSize);
  }
   
    //This void is where the rain is draw. There are two loops which each draw rain drops. The if
    //statment resets the rain once it reaches the bottom of the screen back to the top.
    void rainShower(){
      noStroke();
      fill(77, 151, 201);
      for (int i = 0; i > 100; i = i+= 1);{
        circle(rainDropX + random(-400,400),rainDropY+ random(-400,400),10);
        if(rainDropY >= 400){
        rainDropY = 0;
      }
      
        for(int j = 0; j <15;j = j+= 1){
          circle(rainDropX + random(-400,400),rainDropY+ random(-400,400),10);
           //println("this is i", j);
          //This break stops the loop once it creates 12 raindrops.
          if(j >= 12){
            break;
          }
        }
        
      }
      
    }

}
