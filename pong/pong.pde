void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
  ballVx = BALL_VELOCITY;
  ballVy = BALL_VELOCITY;
}

void draw() {
  drawGameScreen();
}

void drawGameScreen() {
  // Draw background
  // Update Ball Velocity and Resolve Collisions
  // Update Ball and Paddle Positions
  // Draw Ball and Paddles
  // Display Scores
}

void drawBall() {
  // Display Ball in correct position
   ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
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
}