// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jumpOnMushroom() {
    // Check if the player is colliding with the mushroom from below or the side
    var _mushroom = instance_place(x, y + 1, oMushroom);
    
    if (_mushroom != noone) {
        // Check if the player's bottom is above the mushroom's top
        if (y <= _mushroom.bbox_top && _mushroom.state = STATES.MUSHROOM_FREE) {
			damageEntity(_mushroom, ownerID, jumpDamage);
            // Apply jump and bounce back up
            ySpeed = jumpSpeed;
        }
    }
}