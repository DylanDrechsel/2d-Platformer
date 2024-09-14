// @desc --> Controls Movement, Collisions, and Facing Direction
function playerMovement(){
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyJump = keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check(ord("S"))
	keyRoll = keyboard_check(vk_space);
	keyAttack = mouse_check_button_pressed(mb_left)
	directionInput = keyRight - keyLeft; 

	xSpeed = directionInput * moveSpeed;
	ySpeed += grav;
	
	// Checks to see if the player is on the ground
	isOnGround = place_meeting(x, y + 1, oCol) || place_meeting(x, y + 1, oColPlatform)

	// Jump
	if keyJump && isOnGround {
		ySpeed = jumpSpeed;	
	}
	
	if keyRoll && isOnGround {
		playerRoll();	
	}

	checkGroundCollision();
	checkPlatformCollision();
	checkWallCollision();

	if directionInput != 0 && !isRolling {
		image_xscale = directionInput;
		sprite_index = sPlayerRun;
	} else if !isRolling {
		sprite_index = sPlayerIdle;	
	}
	
	// Move the player
	x += xSpeed;
	y += ySpeed;
}