/// @description Insert description here
// You can write your code in this editor
draw_self()

// Input Variables
keyLeft = false;
keyRight = false;
keyJump = false;
keyRoll = false;
directionInput = 0;

// Movement Variables
moveSpeed = 5;
jumpSpeed = -9;
grav = .25;
xSpeed = 0;
ySpeed = 0;
isRolling = false;

// Timers
rollTimer = 0;

// Player Trackers
state = STATES.FREE