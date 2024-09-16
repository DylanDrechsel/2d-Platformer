// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function castFireball(){
	if (keyAttack && cooldownFireball <= 0) {
		// Sets timer for coowdownFireball
		cooldownFireball = 30;
		
		// Create a fireball at the player's current position
		var _fireball = instance_create_layer(x, y + 6, "Instances", oFireball);
	
		// Set fireball's direction towards the mouse
	    var _mouseDirection = point_direction(x, y, mouse_x, mouse_y);
		
		if (mouse_x < x) {
		    // Mouse is to the left of the player
		    _fireball.image_xscale = -1;
		} else {
		    // Mouse is to the right of the player
		    _fireball.image_xscale = 1;
		}
    
	    // Set the fireball's direction and speed
	    _fireball.direction = _mouseDirection;
	    _fireball.speed = 10;
	} else {
		cooldownFireball--	
	}
}