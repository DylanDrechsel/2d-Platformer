// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function playerRoll(){
	if !isRolling {
		isRolling = true;
		var _spriteLength = sprite_get_number(sPlayerRoll);
		sprite_index = sPlayerRoll;
		state = STATES.ROLL;
		image_speed = .2;
		rollTimer = _spriteLength * 3;
	}
	
	x += rollSpeed * image_xscale;
	rollTimer -= 1;
	
	if rollTimer <= 0 {
		isRolling = false;
		state = STATES.FREE;
	}
}