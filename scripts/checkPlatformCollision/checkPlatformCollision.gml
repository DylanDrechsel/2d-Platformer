// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkPlatformCollision(){
	var _playerY = y;
	var _platformInstance = instance_place(x, y + ySpeed, oColPlatform);
	
	if ( _platformInstance != noone) {
		var _platformY =  _platformInstance.y
		
		if (_playerY + sprite_height / 2 <= _platformY) {
			if place_meeting(x + xSpeed, y + ySpeed, oColPlatform) {
				var _pixelCheck = sign(ySpeed)
				while !place_meeting(x, y + 2, oColPlatform) {
					y += _pixelCheck;
				}
				
				ySpeed = 0;
			}	
		}
	}
}