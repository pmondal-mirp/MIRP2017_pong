void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 40));
  ballVx = BALL_VELOCITY;
  ballVy = BALL_VELOCITY;
  buffer = paddleLength/2;
}


void draw() {
  if (gameState == 0)
    drawStartScreen();
  else
  drawGameScreen();
  updateGameState() ;
  
}

void drawGameScreen() {
   background(255); // Draw background
   if(pauseState == 0) {
  updateBallVelocity();// Update Ball Velocity and Resolve Collisions
  updateBallPosition(); //Update Ball Positions
  updatePaddlePositions();// Update Paddle Positions
  drawBall(); //Draw Ball
  drawPaddles(); // Draw  Paddle
  drawPauseScreen ();
   }
  else if(pauseState == 1) {
  drawPauseScreen ();
  drawBall(); //Draw Ball
  drawPaddles(); // Draw  Paddle
  text ("Game is paused", 150, displayHeight/2);
  
   }
  

  displayScores();// Display Scores
}

void drawBall() {
  // Display Ball in correct position
    fill(ballColor);
    ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
    if (ballX > displayWidth || ballX < ballRadius) {
      color(255,0,0);
      ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
    }
   }

void drawPaddles() {
  // Display Left and Right paddles in correct position
   drawRight();
   drawLeft();
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
  rightLose();
  leftLose() ;
  text("Press R to reset, Press P to pause", 20, 680);
}