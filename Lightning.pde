int startX = 900;
int startY = 745;
int endX = 900;
int endY = 745;
int sX = 900;
int sY = 745;
int eX = 900;
int eY = 745;
int openClose = 0;
PImage closedBall;
PImage openBall;
PImage pikachu;




void setup()
{
	closedBall = loadImage("Pictures/closedBall.png");
	openBall = loadImage("Pictures/openBall.png");
	pikachu = loadImage("Pictures/pikachu.png");

	size(1000,800);
  	strokeWeight(1);
  	background(0);
}
void draw()
{
	if(openClose % 2 ==0){
		image(closedBall, 850, 685, 100, 100);
	}else {
		image(openBall, 850, 685, 100, 100);
	}


	if(openClose % 2 != 0){
	  	stroke((int)(Math.random()*226), (int)(Math.random()*226), (int)(Math.random()*226));
	  	while(endX > 500){
	    	endX = startX - (int)(Math.random()*10);
	    	endY = startY - (int)(Math.random()*10)+2;
	    	line(startX, startY, endX, endY);
	    	startX = endX;
	    	startY = endY;
	  	}
	  	image(pikachu, endX - 50, endY - 75, 100, 150);
	}

	sX = endX;
	sY = endY;
	eX = endX;
	eY = endY;

	if(openClose % 2 != 0){
		stroke(#FFFF00);
	  	while(endX > 500){
	    	eX = sX - (int)(Math.random()*10);
	    	eY = sY - (int)(Math.random()*10)+2;
	    	line(sX, sY, eX, eY);
	    	sX = eX;
	    	sY = eY;
	  	}
	}

    
}
void mousePressed()
{
	startX = 900;
	startY = 745;
    endX = 900;
    endY = 745;
  	background(0);
  	openClose++;
}

