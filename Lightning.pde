int startX = 0;
int startY = 400;
int endX = 0;
int endY = 400;

PImage closedBall;




void setup()
{
	closedBall = loadImage("Pictures/closedBall.png");

	size(1000,800);
  	strokeWeight(1);
  	background(0);
}
void draw()
{
	image(closedBall, 400, 400, 50, 50);
  	stroke((int)(Math.random()*226), (int)(Math.random()*226), (int)(Math.random()*226));
  	while(endX < 1000){
    	endX = startX + (int)(Math.random()*10);
    	endY = startY + (int)(Math.random()*19) - 9;
    	line(startX, startY, endX, endY);
    	startX = endX;
    	startY = endY;
  }
    
}
void mousePressed()
{
	startX = 0;
  	startY = 400;
  	endX = 0;
  	endY = 400;
}

