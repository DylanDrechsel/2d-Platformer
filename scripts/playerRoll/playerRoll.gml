// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function playerRoll(){
	if !isRolling {
		isRolling = true;
		var _spriteLength = sprite_get_number(sPlayerRoll);
		sprite_index = sPlayerRoll;
		state = STATES.ROLL;
		rollTimer = _spriteLength * 3;
	}
	
	x += rollSpeed * image_xscale;
	rollTimer -= 1;
	
	if place_meeting(x + rollSpeed, y, oColWall) {
		sprite_index = sPlayerIdle;
		xSpeed = 0;
		rollSpeed = 0;
		
		var _pixelCheck = image_xscale;
		while !place_meeting(x + _pixelCheck, y, oColWall) {
			x += _pixelCheck;
		}
	}
	
	
	if rollTimer <= 0 {
		isRolling = false;
		state = STATES.FREE;
		rollSpeed = 8;
	}
}