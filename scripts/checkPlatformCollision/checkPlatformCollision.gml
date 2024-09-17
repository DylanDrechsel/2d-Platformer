function checkPlatformCollision() {
    var _playerY = bbox_bottom;
    var _platformInstance = instance_place(x, y + ySpeed, oColPlatform);
    
    // Check if the player is pressing down to fall through the platform
    var _isPressingDown = keyboard_check(ord("S"));

    // Start falling through the platform if pressing down
    if (_isPressingDown) {
        fallThrough = true;
    }

    if (_platformInstance != noone) {
        var _platformY = _platformInstance.y;

        // Only apply collision if the player is above the platform, not pressing down, and not in fallThrough state
        if (_playerY <= _platformY && !_isPressingDown && !fallThrough) {
            if place_meeting(x, y + ySpeed, oColPlatform) {
                var _pixelCheck = sign(ySpeed);
				// Set y position exactly on top of the platform
                    y = _platformY - sprite_height / 2;

                    // Stop vertical movement (ySpeed) and prevent gravity from being applied
                    ySpeed = 0;
                    grav = 0;
                    isOnPlatform = true;
                }

               
        }
    } else {
        // Reapply gravity if no platform is beneath the player or after jumping
        grav = 0.25;
        isOnPlatform = false;
    }

    // Ensure gravity is active when the player jumps (ySpeed < 0) or is falling
    if (ySpeed < 0.25 || !place_meeting(x, y + 1, oColPlatform)) {
        grav = 0.25;
    }

    // Handle the fall-through state: Once the player has completely fallen through the platform, reset the flag
    if (fallThrough && !place_meeting(x, y + 1, oColPlatform)) {
        fallThrough = false; // Reset the fallThrough state once the player is clear of the platform
		isOnPlatform = false;
    }
}
