class Ship {

  float posX;//varaible decloration
  float posY;
  float speedX= 0;
  float speedY= 0;
  float ang;

  Ship() {
    posX =width/2;
    posY =height/2;
    speedX= 0;
    speedY= 0;
    ang =0;
  }
  void moveP() {                  
    if (mousePressed) {
      speedX=(mouseX-posX)/400;
      speedY=(mouseY-posY)/400;//this makes the ship track the mouse when clicked
    }
    posX= posX+speedX;     
    posY= posY+speedY;//this sets le's Speed and makes it move
    //speedX=.99*speedX;             
    //speedY=.99*speedY;    //this gives the ship friction
  }

  void displayP() {
    pushMatrix();  //adds a "plate" to the pile
    ang = atan2(mouseY-posY, mouseX-posX);
    translate(posX, posY);
    rotate(ang);//rotates the ship
    triangle(-50, -20, 0, 0, - 50, +20);//ship's coordinates
    popMatrix();//resets the "plate"
  }
}
