/// @description Insert description here
// You can write your code in this editor
draw_self()

// Input Variables
keyLeft = false;
keyRight = false;
keyJump = false;
keyRoll = false;
directionInput = 0;
ownerID = noone;

// Movement Variables
moveSpeed = 5;
jumpSpeed = -9;
rollSpeed = 8;
grav = .25;
xSpeed = 0;
ySpeed = 0;
isRolling = false;
jumpDamage = 4;
isOnGround = true;
isOnPlatform = false;

// Combat Variables
cooldownFireball = 0;

// Timers
rollTimer = 0;

// Player Trackers
state = STATES.FREE