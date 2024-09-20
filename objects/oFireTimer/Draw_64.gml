// Calculate total remaining time in milliseconds
var _remainingMillis = oFirerainParent.alarm[1] * (1000 / room_speed);

// Get seconds and milliseconds
var _seconds = floor(_remainingMillis / 1000);
var _milliseconds = _remainingMillis mod 1000;

// Format milliseconds to be two digits
var _formattedMillis = string_format(_milliseconds, 0, 0);

// Set the margin for the top-right corner
var _positionX = 1200;
var _positionY = 15;

// Set the font color to white
draw_set_color(c_white);

// Draw the remaining time anchored to the top-right of the screen
draw_text(_positionX, _positionY, "FIRE: " + string(_seconds) + "." + _formattedMillis + "s");
