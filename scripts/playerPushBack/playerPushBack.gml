function playerPushBack(){
	// Set player sprite and sets the hurtTime
	if sprite_index != sPlayerHit {
		sprite_index = sPlayerHit;
		alarm[HURT] = hurtTime;
	}
	
	// Gets the nearest mushroom data
	var _mushroom = instance_nearest(x, y, oMushroom);
	if alarm[HURT] > 0 {
		// Wall, Ground, and Platform Collisions to make sure the player doesnt get pushed off the edge when damaged
		if !checkWallCollision() && place_meeting(x + (15 * -_mushroom.image_xscale), y + 1, oCol) {
			x += 3 * -_mushroom.image_xscale;	
		} else if place_meeting(x + (15 * -_mushroom.image_xscale), y + 1, oColPlatform) {
			x += 3 * -_mushroom.image_xscale;	
		}
	}
	
	// Hurt timer is now 0 set the STATE to FREE
	if alarm[HURT] <= 0 state = STATES.FREE;
}