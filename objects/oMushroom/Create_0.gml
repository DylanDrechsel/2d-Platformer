/// @description Insert description here
// You can write your code in this editor
hpMax = 15;
hp = hpMax;
xSpeed = 2;
ySpeed = 0;
grav = .25;
state = STATES.MUSHROOM_FREE;

// Attack
ownerID = noone;
attackRange = 30;
hurtTime = 30;

// Sprites
sHurt = sMushroomHit;
sAttack = sMushroomAttack;
sDead = sMushroomDie;
sWalk = sMushroomRun;