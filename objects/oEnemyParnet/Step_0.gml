switch (state) {
	case STATES.MUSHROOM_FREE:
		mushroomMovement();
		enemyAnimation();
	break;
	case STATES.DAMAGE: 
		enemyAnimation();
	break;
	case STATES.DEAD:
		enemyAnimation();
	break;
}
