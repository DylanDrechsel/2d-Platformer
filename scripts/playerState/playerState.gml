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
		break;
		case STATES.ROLL:
			playerRoll();
			checkWallCollision();
		break;
	}
}