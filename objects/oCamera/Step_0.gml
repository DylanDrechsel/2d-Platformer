// Calculate the camera's new position based on the player's current position
	var _camX = clamp(oPlayer.x - cameraWidth / 2, 0, room_width - cameraWidth);
	var _camY = clamp(oPlayer.y - cameraHeight / 2, 0, room_height - cameraHeight);
	
	// Update the camera's position
	camera_set_view_pos(cameraID, _camX, _camY);