//Not astroids v1 | Made by Luna Gale | 4 october 2018
Ship s1;//declares ship object
float angle;
PVector d = new PVector();

void setup() {
  size(1000, 1000);
  //fullScreen();//it's litterallyjust window size
  frameRate(420);//lmao
  s1 = new Ship();//ship initialized
}

void draw() {
  background(0);//it's the heckin background colour
  s1.displayP(); 
  s1.moveP();
}
