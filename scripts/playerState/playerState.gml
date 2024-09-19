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
			playerPushBack(); 
		break;
		case STATES.DEAD:
			if sprite_index != sPlayerDeath {
				sprite_index = sPlayerDeath;
				image_index = 0;
			}
			if floor(image_index) = 3 image_speed = 0;
		break;
	}
}