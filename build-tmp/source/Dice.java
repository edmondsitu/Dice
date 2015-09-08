import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

public void setup()
{
	size(400,400);
	noLoop();
	background(0);
}

public void draw()
{
	Die one = new Die(10,10);
	one.show();
}

public void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}

	public void roll()
	{
		//your code here
	}

	public void show()
	{
		//your code here
		for(int i = 15; i < 370; i = i + 60)
		{
			for(int j = 15; j < 370; j = j + 60)
			{
				noStroke();
				fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
				rect(myX+i,myY+j,50,50,10);				
			}
		
		}

	}

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
