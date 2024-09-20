switch (state) {
	case STATES.MUSHROOM_FREE:
		mushroomMovement();
		enemyAnimation();
		mushroomCheckForPlayer();
	break;
	case STATES.ATTACK:
		enemyAnimation();
		mushroomCheckForPlayer();
		mushroomAttack();
	break;
	case STATES.DAMAGE: 
		enemyAnimation();
		if alarm[HURT] <= 0 state = STATES.MUSHROOM_FREE; 
	break;
	case STATES.DEAD:
		enemyAnimation();
		if !reward {
			oFirerainParent.firerainCountdown += .05;
			reward = true;
		}
	break;
}
