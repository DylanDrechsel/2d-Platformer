// Calculate total remaining time in milliseconds
var remainingMillis = oFirerainParent.alarm[1] * (1000 / room_speed);

// Get seconds and milliseconds
var seconds = floor(remainingMillis / 1000);
var milliseconds = remainingMillis mod 1000;

// Format milliseconds to be two digits
var formattedMillis = string_format(milliseconds, 0, 0);

// Set the margin from the top-right corner
var marginX = 20;
var marginY = 20;

// Set the font color to white
draw_set_color(c_white);

// Draw the remaining time in the top-right corner of the screen
draw_text(room_width - marginX - 100, marginY, "FIRE: " + string(seconds) + "." + formattedMillis + "s");
