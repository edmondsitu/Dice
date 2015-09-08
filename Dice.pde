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
}

void mousePressed()
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

	void roll()
	{
		//your code here
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
			}
		
		}

	}

}
