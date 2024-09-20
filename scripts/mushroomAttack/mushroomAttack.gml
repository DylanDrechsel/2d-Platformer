function mushroomAttack() {
    // Create a new hitbox instance for the current frame
    var _hitbox = instance_create_layer(x, y, "Collisions", oMushroomHitbox);
    _hitbox.parent = id;

    // Make sure the current sprite and frame are properly initialized
    if (sprite_index != -1 && image_index <= 5) {
        var _currentFrame = floor(image_index); // Get the current frame of the animation
        
        // Sync the hitbox position with the mushroom
        _hitbox.x = x;
        _hitbox.y = y;
        _hitbox.image_xscale = image_xscale;

        // Update hitbox mask based on the current frame of the mushroom animation
        switch (_currentFrame) {
            case 0:
                _hitbox.mask_index = sMushroomHitbox;
            break;
            case 1:
                _hitbox.mask_index = sMushroomHitbox_1;
            break;
            case 2:
                _hitbox.mask_index = sMushroomHitbox_2;
            break;
            case 3:
                _hitbox.mask_index = sMushroomHitbox_3;
            break;
            case 4:
                _hitbox.mask_index = sMushroomHitbox_4;
            break;
			case 5:
				instance_destroy(oMushroomHitbox);
			break;
            default:
                instance_destroy(_hitbox);
			break;
        }
    } else {
		instance_destroy(oMushroomHitbox);
		instance_destroy(_hitbox);
	}
}
