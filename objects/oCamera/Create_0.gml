// Camera
// Define the camera width and height
cameraWidth = 640;
cameraHeight = 320;

// create the camera
cameraID = camera_create_view(0, 0, cameraWidth, cameraHeight, 0, -1, 0, 0, cameraWidth, cameraHeight);

// set the active view and camera
view_enabled = true;
view_set_visible(0, true);
view_set_camera(0, cameraID);

// Initially position the camera at the player's position
camera_set_view_pos(cameraID, x - cameraWidth / 2, y - cameraHeight / 2);