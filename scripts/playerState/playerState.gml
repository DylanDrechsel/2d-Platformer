// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerState(){
	switch(state) {
		default:
		break;
		case STATES.FREE:
			playerMovement();
			castFireball();
			checkWallCollision();
			jumpOnMushroom();
		break;
		case STATES.ROLL:
			playerRoll();
			checkWallCollision();
		break;
		case STATES.DAMAGE:
			if sprite_index != sPlayerHit {
				sprite_index = sPlayerHit;
				alarm[HURT] = hurtTime;
			}
			if alarm[HURT] > 0 {
				if !checkWallCollision() {
					x += (2 * -image_xscale);
				}
			}
			if alarm[HURT] <= 0 state = STATES.FREE; 
		break;
	}
}