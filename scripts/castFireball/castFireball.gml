// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function castFireball(){
	if (keyAttack) {
		// Create a fireball at the player's current position
		var _fireball = instance_create_layer(x, y, "Instances", oFireball);
		
		// Set the fireballs speed and direction
		_fireball.direction = image_xscale;
		_fireball.speed = oFireball.xspd;
	}
}