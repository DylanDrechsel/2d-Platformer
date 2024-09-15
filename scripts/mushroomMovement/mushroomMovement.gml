// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mushroomMovement(){
	sprite_index = sMushroomRun;
	ySpeed = grav;
	
	// X Collision
	if place_meeting(x + xSpeed, y, oCol) {
		// Move player close to the wall as possible
		var _pixelCheck = sign(xSpeed)
		while !place_meeting(x + _pixelCheck, y, oCol) {
			x += _pixelCheck;
		}
		
		// Set xSpeed to 0
		xSpeed = 0;
	}

	// Y Collision
	if place_meeting(x + xSpeed, y + ySpeed, oCol) {
		// Move player close to the wall as possible
		var _pixelCheck = sign(ySpeed)
		while !place_meeting(x + xSpeed, y + _pixelCheck, oCol) {
			y += _pixelCheck;
		}
		
		// Set ySpeed to 0
		ySpeed = 0;
	}
	
	// Move the enemy horizontally
    x += xSpeed;
	y += ySpeed;

    // Check for a wall or edge of platform to reverse direction
    var _wallCollision = place_meeting(x + xSpeed, y, oColWall);
    var _noGround = !place_meeting(x + 1, y + 1, oCol);
	var _noPlatform = place_meeting(x + 1, y + 1, oColPlatform);

    // If the enemy hits a wall or reaches the edge of a platform, reverse direction
    if (_wallCollision || _noGround || _noPlatform) {
        xSpeed = -xSpeed;
        image_xscale = sign(-xSpeed); // Flip the sprite to face the correct direction
    }
}