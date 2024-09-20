instance_destroy();
instance_create_layer(x, y, "Enemies", oFirerainAnimation);
if oPlayer.state != (STATES.DAMAGE || STATES.DEAD) {
	damageEntity(other, ownerID, damage);	
}