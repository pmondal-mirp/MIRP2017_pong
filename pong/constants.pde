// Display Size
int displayWidth=700, displayHeight=700;

// Velocity Cnstants
float BALL_VELOCITY = 7; //This is the MAX speed of the ball.
float PADDLE_VELOCITY = 10;

// Background Color
int bgColor = 255;

// Ball parameters
float ballX= displayWidth/2, ballY = displayHeight/2;
float ballVx, ballVy; // ballVx is always BALL_VELOCTY or -BALL_VELOCITY; ballVy varies.
float ballRadius = 10;
int ballColor = 0;




// Paddle Dimensions
float paddleLength = 180.0, paddleWidth = 20.0;
int paddleColor = 0;
// Y - position of Left and Right paddles
float leftPaddleY=displayHeight/2, rightPaddleY=displayHeight/2;
float rightPaddleX=displayWidth - paddleWidth, leftPaddleX=0;

// Ball Reflections
float buffer;

// Score Variables
int leftScore = 0, rightScore = 0;

// Controls for the Left Paddle
char LEFT_UP = 'q', LEFT_DOWN = 'a';

// Controls for the Right Paddle
char RIGHT_UP = 'o', RIGHT_DOWN = 'l';

// Game Controls
char RESET = 'r', PAUSE = 'p', START = 's';

// Keyoard Handling Booleans
boolean left_up, right_up, left_down, right_down;
boolean reset, pause, start;

//Gamestate
int gameState = 0;

//PauseState
int pauseState = 0;

float temp1, temp2;