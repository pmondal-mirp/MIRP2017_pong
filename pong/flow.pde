void rightLose() {
  if (ballX > displayWidth)
    //left player scores
  leftScoreBoard();
  else text(leftScore, 280, 60);
}

void leftLose() {
   if(ballX < ballRadius)
    //right player scores
   rightScoreBoard();
   else text(rightScore , 410, 60);
}
void leftScoreBoard() {
  leftScore += 1;
  text (leftScore, 280, 60);
}
void rightScoreBoard() {
  rightScore += 1;
  text(rightScore , 410, 60);
}

void updateGameState () {
  if(start)
    gameState = 1;
  else if(gameState == 1 && reset) {
    gameState = 0;
    leftScore = 0;
    rightScore = 0;
    ballX = displayWidth/2;
    ballY = displayHeight/2;
  }
}