if (alarm[1] <= 0) {
    // Get the camera's current view position and width
    var _camera = view_camera[0];  // Assuming the camera is in view[0], adjust if using a different view
    var _cameraX = camera_get_view_x(_camera);  // Get the leftmost position of the camera view
    var _cameraWidth = camera_get_view_width(_camera);  // Get the width of the camera view
    var _cameraRight = _cameraX + _cameraWidth;  // Calculate the rightmost position of the camera view

    // Spawn x coordinate within the camera's view
    xSpawn = irandom_range(_cameraX, _cameraRight);

    // Create the instance of oFirerain at the calculated position
    instance_create_layer(xSpawn, 0, "Enemies", oFirerain);

    // Reset the alarm
    alarm[1] = firerainCountdown;
}

if alarm[2] <= 0 && firerainCountdown >= 5 {
	firerainCountdown -= 1
	alarm[2] = 100;	
}