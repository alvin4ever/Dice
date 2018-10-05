int numRoll;
int sum;

void setup()
{
	noLoop();
  size(300,300);
}

void draw()
{
  background(255,255,255);
  for(int y = 10; y <= 300; y=y+60)
  {
    for(int x = 10; x <=300; x=x+60)
    {
      Die bob = new Die(x,y);
      bob.show();
    }
  }
  fill(0);
  text("Sum of Dice: " + sum, 100, 125);
  sum=0;
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY;
  Die (int x, int y)
  {
    myX=x;
    myY=y;
}

  void roll()
  {
 }
  
  void show()
  {
    fill((int)(Math.random()*256), (int)((Math.random()*256)), (int)((Math.random()*256)));
    rect(myX,myY,40,40);
    fill(255, 255, 255);
    numRoll = (int)(Math.random()*6)+1;
    if (numRoll == 1){
    ellipse(myX+20,myY+20,5,7); //1
    sum += 1;
    }
    if (numRoll == 2){
    ellipse(myX+13,myY+13,5,7); //2
    ellipse(myX+27,myY+27,5,7);
    sum += 2;
    }
    if (numRoll == 3){
    ellipse(myX+20,myY+20,5,7); //3
    ellipse(myX+27,myY+27,5,7);
    ellipse(myX+13,myY+13,5,7);
    sum += 3;
    }
    if (numRoll == 4){ 
    ellipse(myX+12,myY+30,5,7); //4
    ellipse(myX+12,myY+10,5,7);
    ellipse(myX+29,myY+30,5,7);
    ellipse(myX+29,myY+10,5,7);
    sum += 4;
    }
    else if (numRoll == 5){
    ellipse(myX+12,myY+30,5,7); //5
    ellipse(myX+12,myY+10,5,7);
    ellipse(myX+29,myY+30,5,7);
    ellipse(myX+29,myY+10,5,7);
    ellipse(myX+20,myY+20,5,7);
    sum += 5;
    }
    else if (numRoll == 6){
    ellipse(myX+12,myY+25,5,7); //6
    ellipse(myX+12,myY+15,5,7);
    ellipse(myX+29,myY+25,5,7);
    ellipse(myX+29,myY+15,5,7);
    ellipse(myX+21,myY+25,5,7);
    ellipse(myX+21,myY+15,5,7);
    sum += 6;
    }
  }
}
