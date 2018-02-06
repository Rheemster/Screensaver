class Pipe {
  float xpos;
  float ypos;
  float zpos;
  float w;
  color c;
  Pipe(float tempXpos, float tempYpos, float tempZpos, color tempC, float tempW) {
    xpos = tempXpos;
    ypos = tempYpos;
    zpos = tempZpos;
    c = tempC;
    w = tempW;
  }
  void moveRight(float moveCount) {
    if (xpos<width) {
      for (int i=0; i<moveCount; i++) {
        stroke(c);
        strokeWeight(w);
        float tempX=xpos+i;
        line(xpos, ypos, zpos, tempX, ypos, zpos);
        xpos=tempX;
      }
    }
  }
  void moveLeft(float moveCount) {
    if (xpos>0) {
      for (int i=0; i<moveCount; i++) {
        stroke(c);
        strokeWeight(w);
        float tempX=xpos-i;
        line(xpos, ypos, zpos, tempX, ypos, zpos);
        xpos=tempX;
      }
    }
  }
  void moveDown(float moveCount) {
    if (ypos<height) {
      for (int i=0; i<moveCount; i++) {
        stroke(c);
        strokeWeight(w);
        float tempY=ypos+i;
        line(xpos, ypos, zpos, xpos, tempY, zpos);
        ypos=tempY;
      }
    }
  }
  void moveUp(float moveCount) {
    if (ypos>0) {
      for (int i=0; i<moveCount; i++) {
        stroke(c);
        strokeWeight(w);
        float tempY=ypos-i;
        line(xpos, ypos, zpos, xpos, tempY, zpos);
        ypos=tempY;
      }
    }
  }
  void moveForward(float moveCount) {
    if(zpos<height/2){
      for (int i=0; i<moveCount; i++) {
        stroke(c);
        strokeWeight(w);
        float tempZ=zpos+i;
        line(xpos, ypos, zpos, xpos, ypos, tempZ);
        zpos=tempZ;
      }
    }
  }
  void moveBackward(float moveCount) {
    if(zpos>-height/2){
      for (int i=0; i<moveCount; i++) {
        stroke(c);
        strokeWeight(w);
        float tempZ=zpos-i;
        line(xpos, ypos, zpos, xpos, ypos, tempZ);
        zpos=tempZ;
      }
    }
  }
  void randomMovement() {
    int direction = int(random(6));
    if (direction==0) {
      moveRight(int(random(width/50)));
    } else if (direction==1) {
      moveLeft(int(random(width/50)));
    } else if (direction==2) {
      moveDown(int(random(width/50)));
    } else if (direction==3) {
      moveUp(int(random(width/50)));
    } else if (direction==4) {
      moveForward(int(random(width/50)));
    } else if (direction == 5) {
      moveBackward(int(random(width/50)));
    }
  }
}