//Written in Processing 2.2.1
//Phillip David Stearns 13/06/2017
//An example of working in Processing.

//Generally, we place Global variables here.
//There are variables that can be seen by all parts of our sketch.
//Variables declared inside functions can only be seen by the functions in which they are called.
//So to start, we declare that there are some colors we want to work with.
color c1;
color c2;
color c3;
color c4;

//setup is where we initialize the variables in our sketch, including things like window size, framerate, etc...
void setup() {

  size (400, 400); //this always goes first!
  frameRate(30); //in frames per second, but your sketch will only update as fast as your computer can draw

  background(0); //sets the background to black

  //initialize colors to black
  c1=color(0);
  c2=color(0);
  c3=color(0);
  c4=color(0);
}

void draw() {
  //call our draw method
  drawRectangles();
}

void drawRectangles() {

  //randomize colors
  c1 = color(random(256), random(256), random(256));
  c2 = color(random(256), random(256), random(256));
  c3 = color(random(256), random(256), random(256));
  c4 = color(random(256), random(256), random(256));


  //decide what our border will look like
  stroke(0); //sets the border color
  strokeWeight(1); //sets to border thickness
  noStroke(); //we don't draw it afterall, though if you wanted, you could comment this whole like out.

  //we have to change fill color then draw 
  fill(c1); //fill() needs a color datatype, sets the fill color for all shapes below until it is changed
  rect(0, 0, 200, 200); //rect() has a couple of different draw modes; here we provide the x y coordinates of the upper left and lower right corners

  fill(c2);
  rect(200, 0, 200, 400);

  fill(c3);
  rect(0, 200, 200, 400);

  fill(c4);
  rect(200, 200, 400, 400);
}

