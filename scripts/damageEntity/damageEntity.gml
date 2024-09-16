// desc --> 
function damageEntity(_targetID, _sourceID, _damage){
	// targetID --> The target we hit
	// SourceID --> The source of the damage
	// damage --> Amount of damage to deal
	with (_targetID) {
		if alarm[HURT] > 0 exit;
		
		hp -= _damage;
		var _dead = isDead();
		
		if (_dead) exit;
	}
}