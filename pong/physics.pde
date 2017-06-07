void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
  if(ballX > displayWidth - ballRadius || ballX < ballRadius)
    ballVx = -ballVx;
  else if(ballY > displayHeight - ballRadius || ballY < ballRadius)
    ballVy = -ballVy;
  
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
  if(left_up) {
    if(leftPaddleY==0)
      leftPaddleY = leftPaddleY;
    else leftPaddleY -= PADDLE_VELOCITY;
  }
  else if(left_down) {
    if(leftPaddleY==displayHeight)
      leftPaddleY = leftPaddleY;
    else leftPaddleY += PADDLE_VELOCITY;
  }
}