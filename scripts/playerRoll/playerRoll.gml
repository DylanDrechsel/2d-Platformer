function playerRoll(){
	if !isRolling {
		isRolling = true;
		var _spriteLength = sprite_get_number(sPlayerRoll);
		sprite_index = sPlayerRoll;
		image_index = 2;
		state = STATES.ROLL;
		rollTimer = _spriteLength * 3;
	}
	
	if place_meeting(x + rollSpeed, y, oColWall) {
		sprite_index = sPlayerIdle;
		
		var _pixelCheck = sign(image_xscale);
		while !place_meeting(x + _pixelCheck, y, oColWall) {
			x += _pixelCheck;
		}
		
		xSpeed = 0;
		rollSpeed = 0;
		isRolling = false;
	}
	
	x += rollSpeed * image_xscale;
	rollTimer -= 1;
	
	
	if rollTimer <= 0 || isRolling = false {
		isRolling = false;
		state = STATES.FREE;
		rollSpeed = 8;
	}
}