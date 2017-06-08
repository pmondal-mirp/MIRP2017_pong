void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point 
 if(ballY > displayHeight - ballRadius || ballY < ballRadius)
    ballVy = -ballVy;
 else if((ballX < paddleWidth + ballRadius && ballY > leftPaddleY) && ballY < leftPaddleY + paddleLength) {
    if(ballY == leftPaddleY + paddleLength/2)
      ballVx = -ballVx;
    else  {
      ballVx = -ballVx;
      ballVy = BALL_VELOCITY*(paddleLength/2 - ballY + leftPaddleY)/buffer ;
    }
 }
 else if((ballX > displayWidth - paddleWidth && ballY > rightPaddleY) && ballY < rightPaddleY + paddleLength) {
     if(ballY == rightPaddleY + paddleLength/2)
         ballVx = -ballVx;
     else {
       if(ballY >  rightPaddleY + paddleLength/2) {
       ballVx = -ballVx;
       ballVy = -BALL_VELOCITY*(paddleLength/2 - ballY + rightPaddleY)/buffer;
       }
       else {
        ballVx = -ballVx;
        ballVy = -BALL_VELOCITY*(paddleLength/2 - ballY + rightPaddleY)/buffer;
       }
     }
 }
 
 else if(ballX > displayWidth || ballX < ballRadius) 
    ballVx = -ballVx;
}

    


void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
  if(left_up) {
    if(leftPaddleY!=0)
     leftPaddleY -= PADDLE_VELOCITY;
  }
  else if(left_down) {
    if(leftPaddleY < displayHeight - paddleLength)
       leftPaddleY += PADDLE_VELOCITY;
  }
  if(right_up){
    if(rightPaddleY!=0)
      rightPaddleY -= PADDLE_VELOCITY;
  }
  else if(right_down) {
      if(rightPaddleY < displayHeight - paddleLength)
      rightPaddleY += PADDLE_VELOCITY;
      
  }
      
      
}