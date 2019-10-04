int startX = 900;
int startY = 745;
int endX = 900;
int endY = 745;
int s1X, s2X = 900;
int s1Y, s2Y = 745;
int e1X, e2X = 900;
int e1Y, e2Y = 745;
int openClose = 0;
int counter = 0;
PImage closedBall;
// https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiateOdsIDlAhWXop4KHSesBlUQjRx6BAgBEAQ&url=https%3A%2F%2Ftoppng.com%2Fokeball-pokeball-pixel-PNG-free-PNG-Images_164929&psig=AOvVaw3QhIY_1fr4eA2tEIlXzKZv&ust=1570201285490578
PImage openBall;
// https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwi_5qHirYDlAhWiHTQIHaWLD5YQjRx6BAgBEAQ&url=http%3A%2F%2Fpixelartmaker.com%2Fart%2F6c566d03a5a916b&psig=AOvVaw3QhIY_1fr4eA2tEIlXzKZv&ust=1570201285490578
PImage pikachu;
// https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwi526emsIDlAhXRo54KHbELCQYQjRx6BAgBEAQ&url=http%3A%2F%2Fminecraftpixelartbuildingideas.blogspot.com%2F2015%2F06%2Fpikachu-pixel-art.html&psig=AOvVaw1TYbqJ4zv4y-YLlMFMhzwW&ust=1570201967972652



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
		fill(0,0,0,5);
		  	stroke(0,0,0,5);
		  	rect(0,0,1000,800);
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

	s1X = s2X = endX;
	s1Y = s2Y = endY;
	e1X = e2X = endX;
	e1Y = e2Y = endY;

	if(openClose % 2 != 0){
		if(counter % 20 == 0){
			stroke(#FFFF00);
		  	while(e1X > 0){
		    	e1X = s1X + (int)(Math.random()*20) - 10;
		    	e1Y = s1Y + (int)(Math.random()*20) - 10;
		    	line(s1X, s1Y, e1X, e1Y);
		    	s1X = e1X;
		    	s1Y = e1Y;
		  	}
		  	while(e2X < 1000){
		    	e2X = s2X - (int)(Math.random()*20) + 10;
		    	e2Y = s2Y - (int)(Math.random()*20) + 10;
		    	line(s2X, s2Y, e2X, e2Y);
		    	s2X = e2X;
		    	s2Y = e2Y;
		  	}
		}
	}

	counter++;
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