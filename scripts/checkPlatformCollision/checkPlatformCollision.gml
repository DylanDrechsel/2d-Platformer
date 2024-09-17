function checkPlatformCollision() {
    var _playerY = bbox_bottom;
    var _platformInstance = instance_place(x, y + ySpeed, oColPlatform);
    
    // Check if the player is pressing down to fall through the platform
    var _isPressingDown = keyboard_check(ord("S"));

    // If pressing down, allow the player to fall through the platform regardless of jump state
    if (_isPressingDown) {
        fallThrough = true;
    }

    if (_platformInstance != noone) {
        var _platformY = _platformInstance.y;

        // Only apply collision if the player is above the platform, not in fallThrough state
        if (_playerY <= _platformY && !fallThrough) {
            if (place_meeting(x, y + ySpeed, oColPlatform)) {
                var _pixelCheck = sign(ySpeed);

                // Only apply collision if the player is falling
                if (ySpeed > 0.25) {
                    // Move the player upwards pixel by pixel until they're no longer colliding
                    while (!place_meeting(x, y + 1, oColPlatform)) {
                        y += _pixelCheck;
                    }

                    // Set the player to the top of the platform and stop vertical movement
                    ySpeed = 0;
                    grav = 0;
                    isOnPlatform = true;
                }
            }              
        }
    } else {
        // Reapply gravity if no platform is beneath the player
        grav = 0.25;
        isOnPlatform = false;
    }

    // Ensure gravity is active when the player jumps or is falling
    if (ySpeed < 0 || !place_meeting(x, y + 1, oColPlatform)) {
        grav = 0.25;
    }
	
	if (fallThrough && keyDown) {
		grav = 0.25;	
	}

    // Handle the fallThrough state: Once the player has completely fallen through the platform, reset the flag
    if (fallThrough && !place_meeting(x, y + 1, oColPlatform)) {
        fallThrough = false;  // Reset the fallThrough state after falling through
    }
}
