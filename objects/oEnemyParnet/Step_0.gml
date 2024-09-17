switch (state) {
	case STATES.MUSHROOM_FREE:
		mushroomMovement();
		enemyAnimation();
	break;
	case STATES.ATTACK:
		enemyAnimation();
	break;
	case STATES.DAMAGE: 
		enemyAnimation();
		if alarm[HURT] <= 0 state = STATES.MUSHROOM_FREE; 
	break;
	case STATES.DEAD:
		enemyAnimation();
	break;
}
