// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerRoll(){
	if !isRolling {
		isRolling = true;
		sprite_index = sPlayerRoll;
		state = STATES.ROLL;
		rollTimer = 30;
	}
	
	//checkGroundCollision();
	rollTimer -= 1;
	
	if rollTimer <= 0 {
		isRolling = false;
		state = STATES.FREE;
	}
}