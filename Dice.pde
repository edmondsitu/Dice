void setup()
{
	size(400,400);
	noLoop();
	background(0);
}

void draw()
{
	Die one = new Die(10,10);
	one.show();
	one.roll();
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int numRoll;
	int myX, myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}

	void roll()
	{
		//your code here
		if((int)(Math.random()*6+1) == 1)
		{
			numRoll = 1;
		}
		if((int)(Math.random()*6+1) == 2)
		{
			numRoll = 2;
		}		
	}

	void show()
	{
		//your code here
		for(int i = 15; i < 370; i = i + 60)
		{
			for(int j = 15; j < 370; j = j + 60)
			{
				noStroke();
				fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
				rect(myX+i,myY+j,50,50,10);
				if(numRoll == 1)
				{
					fill(0);
					ellipse(35+i, 35+j,10,10);
				}


			}
		
		}

	}

}

/* Dots
1.
fill(0);
ellipse(35+i, 35+j,10,10);
2.
fill(0);
ellipse(50+i, 20+j,10,10);
ellipse(20+i, 50+j,10,10);
3.
fill(0);
ellipse(50+i, 20+j,10,10);
ellipse(20+i, 50+j,10,10);
ellipse(35+i, 35+j,10,10);
4.
ellipse(20+i, 20+j,10,10);
ellipse(50+i, 20+j,10,10);
ellipse(20+i, 50+j,10,10);
ellipse(50+i, 50+j,10,10);
5.
ellipse(20+i, 20+j,10,10);
ellipse(50+i, 20+j,10,10);
ellipse(20+i, 50+j,10,10);
ellipse(50+i, 50+j,10,10);
ellipse(35+i, 35+j,10,10);
6.
ellipse(20+i, 20+j,10,10);
ellipse(50+i, 20+j,10,10);
ellipse(20+i, 50+j,10,10);
ellipse(50+i, 50+j,10,10);
ellipse(20+i, 35+j,10,10);
ellipse(50+i, 35+j,10,10);
*/