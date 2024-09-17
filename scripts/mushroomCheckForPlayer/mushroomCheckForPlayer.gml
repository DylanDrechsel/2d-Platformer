// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mushroomCheckForPlayer(){
	if alarm[HURT] >= 0 exit;
	var _playerX = oPlayer.x;
	var _mushroomX = x;

	if abs(_playerX - _mushroomX) <= attackRange {
		state = STATES.ATTACK
		if _playerX - _mushroomX {
			image_xscale = -1;
		} else {
			image_xscale = 1;	
		}
	} else {
		state = STATES.MUSHROOM_FREE;	
	}
}