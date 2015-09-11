void setup()
{
	size(400,450);
	noLoop();

}

void draw()
{
		background(0);
		int sum = 0;
		for(int x = 15; x < 370; x = x + 60)
		{
			for(int y = 15; y < 370; y = y + 60)
			{
				Die one = new Die(x+10,y+10);
				one.roll();
				one.show();
				if(one.numRoll <= 6)
				{
					sum = sum + one.numRoll;
				}
				if(one.numRoll == 1)
				{
					fill(0);
					ellipse(35+x, 35+y,10,10);
				}
				if(one.numRoll == 2)
				{
					fill(0);
					ellipse(50+x, 20+y,10,10);
					ellipse(20+x, 50+y,10,10);
				}
				if(one.numRoll == 3)
				{
					fill(0);
					ellipse(50+x, 20+y,10,10);
					ellipse(20+x, 50+y,10,10);
					ellipse(35+x, 35+y,10,10);;
				}
				if(one.numRoll == 4)
				{
					fill(0);
					ellipse(20+x, 20+y,10,10);
					ellipse(50+x, 20+y,10,10);
					ellipse(20+x, 50+y,10,10);
					ellipse(50+x, 50+y,10,10);
				}
				if(one.numRoll == 5)
				{
					fill(0);
					ellipse(20+x, 20+y,10,10);
					ellipse(50+x, 20+y,10,10);
					ellipse(20+x, 50+y,10,10);
					ellipse(50+x, 50+y,10,10);
					ellipse(35+x, 35+y,10,10);
				}
				if(one.numRoll == 6)
				{
					fill(0);
					ellipse(20+x, 20+y,10,10);
					ellipse(50+x, 20+y,10,10);
					ellipse(20+x, 50+y,10,10);
					ellipse(50+x, 50+y,10,10);
					ellipse(20+x, 35+y,10,10);
					ellipse(50+x, 35+y,10,10);
				}
				fill(255);
				text(sum,180,415);
				System.out.println(sum);


			}
		
		}
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
		numRoll = (int)(Math.random()*6+1);
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
		noStroke();
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		rect(myX,myY,50,50,10);
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