color black=#000000;
color white=#FFFCFC;
color blue=#9AEAF2;
color brick=#FFE590;
color brown=#714701;
color green=#08BC00;
color orange=#FFB324;
color red=#FF5424;
color yellow=#FFEF58;

//animation variables 
int sunX; 
int sunY; 
boolean day;
int moonX;
int moonY;

void setup() {
  size(800, 800);
  sunX=0;
  sunY=800;
  day=true;
  moonX=sunX-50;
  moonY=sunY;
}

void draw() {
  background(blue);
  noStroke();

  //sun&moon
  dayNightSwitching();

  //grass
  fill(green);
  rect(0, 550, 800, 300);

  //house
  fill(brick);
  rect(280, 200, 450, 400);
  //roof
  fill(brown);
  triangle(200, 200, 800, 200, 500, 100);

  //window left
  fill(blue);
  strokeWeight(10);
  stroke(white);
  rect(350, 250, 150, 100);  
  //curtain
  noStroke();
  fill(red);
  triangle(425, 250, 350, 250, 350, 300);
  triangle(425, 250, 500, 250, 500, 300);
  //window frames
  strokeWeight(10);
  stroke(white);
  line(425, 250, 425, 350);
  line(350, 300, 500, 300);

  //window right
  fill(blue);
  strokeWeight(10);
  stroke(white);
  rect(550, 250, 150, 100);  
  //curtain
  noStroke();
  fill(red);
  triangle(625, 250, 550, 250, 550, 300);
  triangle(625, 250, 700, 250, 700, 300);
  //window frames
  strokeWeight(10);
  stroke(white);
  line(625, 250, 625, 350);
  line(550, 300, 700, 300);

  //door
  fill(orange);
  noStroke();
  rect(450, 450, 200, 150);
  circle(550, 450, 200);
  fill(brown);
  circle(500, 500, 25);
} 

void dayNightSwitching() {
  //sun
  if (day) {
    fill(yellow);
    circle(sunX, sunY, 150);
    sunX+=1;
    sunY-=3;
    if (sunY<0) {
      day=false;
      sunX=0;
      sunY=800;
    }
  }

  if (!day) {
    background(black);
    
    //sun
    fill(yellow);
    circle(sunX, sunY, 150);
    //sun animation
    sunX+=1;
    sunY-=3;
    
    //moon
    fill(black);
    circle(moonX, moonY, 100);
    //moon animation
    moonX+=1;
    moonY-=3;

    if (sunY<0) {
      day=true;
      moonX=0;
      moonY=800;
      sunX=0;
      sunY=800;
    }
  }
}
