function checkPlatformCollision() {
    var _playerY = y;
    var _platformInstance = instance_place(x, y + ySpeed, oColPlatform);
	
	// Check if the player is pressing down to fall through the platform
    var _isPressingDown = keyboard_check(ord("S"));

    if (_platformInstance != noone) {
        var _platformY = _platformInstance.y;

        // Only apply collision if the player is above the platform
        if (_playerY + sprite_height / 2 <= _platformY) {
            if place_meeting(x, y + ySpeed, oColPlatform) {
                var _pixelCheck = sign(ySpeed);

                // Move the player upwards pixel by pixel until they're no longer colliding
                while (!place_meeting(x, y + 1, oColPlatform)) {
                    y += _pixelCheck;
                }

                // Set y position exactly on top of the platform
                y = _platformY - sprite_height / 2;

                // Stop vertical movement (ySpeed) and prevent gravity from being applied
                ySpeed = 0;
                grav = 0;
            } else if _isPressingDown {
				// If pressing down, ignore platform collision and apply gravity
				grav = .25
			} else {
                // Reapply gravity if not on the platform
                grav = .25;
            }
        }
    } else if !place_meeting(x, y + 1, oColPlatform) {
		// Reapply gravity if no platform is beneath the player or after jumping
		grav = .25;	
	}
	
	// Ensure gravity is active when the player jumps (ySpeed < 0) or is falling
    if ySpeed < 0 || !place_meeting(x, y + 1, oColPlatform) {
        grav = 0.25;
    }
}
