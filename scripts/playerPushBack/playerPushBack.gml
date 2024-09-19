function playerPushBack(){
	if sprite_index != sPlayerHit {
		sprite_index = sPlayerHit;
		alarm[HURT] = hurtTime;
	}
	var _mushroom = instance_nearest(x, y, oMushroom);
	if alarm[HURT] > 0 {
		if !checkWallCollision() && place_meeting(x + (15 * -_mushroom.image_xscale), y + 1, oCol) {
			x += 2 * -_mushroom.image_xscale;	
		} else if place_meeting(x + (15 * -_mushroom.image_xscale), y + 1, oColPlatform) {
			x += 2 * -_mushroom.image_xscale;	
		}
	}
	if alarm[HURT] <= 0 state = STATES.FREE;
}