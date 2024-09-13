// @desc --> Controls Movement, Collisions, and Facing Direction
function playerMovement(){
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyJump = keyboard_check_pressed(ord("W"));
	keyRoll = keyboard_check_pressed(vk_space);
	directionInput = keyRight - keyLeft; 

	xSpeed = directionInput * moveSpeed;
	ySpeed += grav;
	
	// Checks to see if the player is on the ground
	var isOnGround = place_meeting(x, y + 1, oCol)

	// Jump
	if keyJump && isOnGround {
		ySpeed = jumpSpeed;	
	}
	
	if keyRoll && isOnGround {
		playerRoll();	
	}

	checkGroundCollision();

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