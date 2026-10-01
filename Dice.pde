int sum=0;
        void setup()
  {
      noLoop();
      size(500,500);
  }
  void draw()
  {
    sum=0;
    for (int j=10; j<=400; j=j+60){
      for (int i=10; i<=450; i=i+60){
        Die bob = new Die (i,j);
        bob.show();
        bob.roll();
      }
    }
    textSize(50);
    fill(255,255,255);
    rect(150,420,230,100);
    fill(0);
    text("Sum: " + str(sum),170,470);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX;
      int myY;
      int value;
      
      Die(int x, int y) //constructor
      {
          myX=x;
          myY=y;
          value=(int) ((Math.random()*6)+1);
      }
      void roll()
      {
          value=(int)(Math.random()*6+1);
          sum=sum+value;
      }
      void show()
      {
          fill(255,255,255);
          rect(myX,myY,50,50);
          fill(0);
          if (value==1){
            ellipse(myX+25,myY+25,10,10);
          }
            
          if (value==2){
            ellipse(myX+35,myY+15,10,10);
            ellipse(myX+15,myY+35,10,10);
          }
          if (value==3){
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+25,myY+25,10,10);
            ellipse(myX+10,myY+40,10,10);
          }
          if (value==4){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+10,myY+40,10,10);
          }
          if (value==5){
            ellipse(myX+25,myY+25,10,10);
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+10,myY+40,10,10);
          }
          if (value==6){
            ellipse(myX+15,myY+10,10,10);
            ellipse(myX+35,myY+25,10,10);
            ellipse(myX+35,myY+10,10,10);
            ellipse(myX+15,myY+25,10,10);
            ellipse(myX+35,myY+40,10,10);
            ellipse(myX+15,myY+40,10,10);
          }
        
      }
  }
 
