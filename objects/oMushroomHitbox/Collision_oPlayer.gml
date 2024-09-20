if other.hp >= 0 && oPlayer.state != (STATES.DEAD || STATES.DAMAGE)  {
	damageEntity(other, ownerID, damage);
}
