function playerRoll() {  
    if (!isRolling) {
        isRolling = true;
        var _spriteLength = sprite_get_number(sPlayerRoll);
        sprite_index = sPlayerRoll;
        image_index = 2;
        state = STATES.ROLL;
        rollTimer = _spriteLength * 3;
    }

    // Check for collision with a wall
    if (place_meeting(x + rollSpeed * image_xscale, y, oColWall)) {
        sprite_index = sPlayerIdle;
        var _pixelCheck = sign(image_xscale);

        // Adjust position to avoid getting stuck in the wall
        while (!place_meeting(x + _pixelCheck, y, oColWall)) {
            x += _pixelCheck;
        }

        xSpeed = 0;
        rollSpeed = 0;
        isRolling = false;
    }

    // If the player is in the air (not touching the ground or platforms), apply gravity
    if (!place_meeting(x + rollSpeed, y + 1, oCol) && !place_meeting(x + rollSpeed, y + 1, oColPlatform)) {
        ySpeed += .5;
    }

    // Update position
    x += rollSpeed * image_xscale;
    y += ySpeed;
    rollTimer -= 1;

    // End the roll when the timer is up or the roll is cancelled
    if (rollTimer <= 0 || !isRolling) {
        isRolling = false;
        state = STATES.FREE;
        rollSpeed = 8; // Reset roll speed
    }
}
