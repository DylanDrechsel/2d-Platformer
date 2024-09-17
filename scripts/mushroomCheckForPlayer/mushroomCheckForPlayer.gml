// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mushroomCheckForPlayer(){
	if alarm[HURT] >= 0 exit;
	var _spriteFrameCount = sprite_get_number(sprite_index);
	var _playerX = oPlayer.x;
	var _playerY = oPlayer.y;
	var _mushroomX = x;
	var _mushroomY = y;

	if abs(_playerX - _mushroomX) <= attackRange && abs(_playerY - _mushroomY) <= 50 {
		if state != STATES.ATTACK image_index = 0;
		state = STATES.ATTACK
		
		if _playerX - _mushroomX && image_index < 1 {
			image_xscale = -1;
		} else if image_index < 1 {
			image_xscale = 1;	
		}
	} else if image_index >= _spriteFrameCount - 1 {
		state = STATES.MUSHROOM_FREE;	
	}
}