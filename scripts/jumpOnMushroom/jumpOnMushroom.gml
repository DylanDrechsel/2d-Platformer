// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jumpOnMushroom(){
	if place_meeting(x + xSpeed, y + 10, oMushroom) {
		ySpeed = jumpSpeed;	
	}
}