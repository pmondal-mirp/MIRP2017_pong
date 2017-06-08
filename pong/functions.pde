void drawRight() {
      fill(paddleColor);
      rect(rightPaddleX, rightPaddleY, paddleWidth, paddleLength);
    }
     void drawLeft() {
      fill(paddleColor);
      rect(leftPaddleX, leftPaddleY, paddleWidth, paddleLength);
    }
void drawStartScreen () {
  background(0);
  fill(255);
  println("Press S to start");
  text("Press S to start", 200, displayHeight/2);
}

void drawPauseScreen () {
  if(pause) {
  if(pauseState == 0) {
  pauseState = 1;
  temp1 = ballVx;
  temp2 = ballVy;
  ballVx = 0;
  ballVy = 0;
  }
  else if(pauseState == 1) {
  pauseState = 0;
  ballVx = temp1;
  ballVy = temp2;
  }
  delay(100);
  }
}