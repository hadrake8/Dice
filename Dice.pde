Die A;
void setup()
{
	size(300,300);
	//A = new Die(20,20);
	noLoop();
}
void draw()
{
	//A = new Die(20,20);
	//A.show();
	//A.roll();

	fill(255);

	background(150,255,100);
	int sum = 0;
	for(int y = 20; y <= 250; y = y+=30)
	{
		for(int x = 20; x <= 260; x +=30)
		{
			fill(255);
			A = new Die(x,y);
			A.roll();
			A.show();
			sum = sum + A.H;
			
		}

	}

	textSize(20);
	text(sum, 120, 280);

}
void mousePressed()
{
	if (mousePressed == true){
		redraw();
	}
		
}
class Die //models one single dice cube
{
	int H;
	int myX;
	int myY;
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		H = (int)(Math.random()*6+1);
		//variable initializations here
	}
	void roll()
	{
		H = (int)(Math.random()*6+1);
		
	}
	void show()
	{

		fill(255);
		rect(myX,myY,20,20,5);

		//int H = (int)Math.random()*6+1;
		if (H==1)
		{
			fill(0);
			ellipse(myX+10,myY+10,3,3);
		} else if (H==2)
		{
			fill(0);
			ellipse(myX+5,myY+10,3,3);
			ellipse(myX+15,myY+10,3,3);
		} else if (H==3)
		{
			fill(0);
			ellipse(myX+10,myY+5,3,3);
			ellipse(myX+5,myY+15,3,3);
			ellipse(myX+15,myY+15,3,3);
		} else if (H==4)
		{
			fill(0);
			ellipse(myX+5,myY+5,3,3);
			ellipse(myX+5,myY+15,3,3);
			ellipse(myX+15,myY+15,3,3);
			ellipse(myX+15,myY+5,3,3);
		} else if (H==5){
			fill(0);
			ellipse(myX+5,myY+5,3,3);
			ellipse(myX+5,myY+15,3,3);
			ellipse(myX+15,myY+15,3,3);
			ellipse(myX+15,myY+5,3,3);
			ellipse(myX+10,myY+10,3,3);
		} else if (H==6)
		{
			fill(0);
			ellipse(myX+5,myY+5,3,3);
			ellipse(myX+5,myY+10,3,3);
			ellipse(myX+5,myY+15,3,3);
			ellipse(myX+15,myY+5,3,3);
			ellipse(myX+15,myY+10,3,3);
			ellipse(myX+15,myY+15,3,3);
		}
		
		 

	}
}
