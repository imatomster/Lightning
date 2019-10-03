int startX = 900;
int startY = 745;
int endX = 900;
int endY = 745;
int sX = 900;
int sY = 745;
int eX = 900;
int eY = 745;
int openClose = 0;
int counter = 0;
int c1x = 100;
int c2x = 700;
int cy = 100;
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
		if(counter % 20 == 0){
			stroke(#FFFF00);
		  	while(eX > 0){
		    	eX = sX - (int)(Math.random()*20)- 10;
		    	eY = sY - (int)(Math.random()*20) -10;
		    	line(sX, sY, eX, eY);
		    	sX = eX;
		    	sY = eY;
		  	}
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

