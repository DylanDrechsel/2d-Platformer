// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyAnimation(){
	switch (state) {
		case STATES.MUSHROOM_FREE:
			sprite_index = sWalk;
		break;
		case STATES.DAMAGE: 
			sprite_index = sHurt;
		break;
		case STATES.DEAD:
			checkGroundCollision();
			if sprite_index != sDead {
				sprite_index = sDead;
				image_index = 0;
			}
			
			if image_index >= image_number - 1 {
				image_speed = 0;	
			}
			
		break;
	}
}