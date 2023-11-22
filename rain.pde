class Rain{
    //This sets the array list
    ArrayList<Rain> rainDrops;
    
    //Since there cannot be 2 void setups I made this function for rain so that I could set the neccacary variables
    void rainSetup(){
      
      //This is setting the rainDrop varibale so I can use it to add to Rain later
      rainDrops = new ArrayList<Rain>();
  }
 //This void is what adds the raindrops over onto the main tab of the object based toy
    void rainShower(){
      
      noStroke();
      fill(77, 151, 201);
      
      //This loops makes it so that it adds rainDrops until it reaches 100 then it sits at it. I couldn't get it to function
      //how I wanted so I had to make it so that some circles appeared on the screen.
       
      for (int i = 0; i > 100; i ++);{
        circle(random(0,400),random(0,400),10);
        circle(random(0,400),random(0,400),10);
        circle(random(0,400),random(0,400),10);
        circle(random(0,400),random(0,400),10);
        circle(random(0,400),random(0,400),10);
        circle(random(0,400),random(0,400),10);
      }
    }

}
