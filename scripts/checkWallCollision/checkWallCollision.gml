// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkWallCollision(){
	if place_meeting(x + xSpeed, y, oColWall) {
		// Move player close to the wall as possible
		var _pixelCheck = sign(xSpeed)
		while !place_meeting(x + _pixelCheck, y, oColWall) {
			x += _pixelCheck;
		}
		
		// Set xSpeed to 0
		xSpeed = 0;
	}
	
	if place_meeting(x + xSpeed, y + ySpeed, oColWall) {
		// Move player close to the wall as possible
		var _pixelCheck = sign(ySpeed)
		while !place_meeting(x + xSpeed, y + _pixelCheck, oColWall) {
			y += _pixelCheck;
		}
		
		// Set ySpeed to 0
		ySpeed = 0;
	}
}