// Variables for margin and health bar dimensions
var marginX = 20;  // Margin from the left
var marginY = 20;  // Margin from the top
var barWidth = 100;  // Width of the health bar
var barHeight = 10;  // Height of the health bar

// Calculate the health percentage
var healthPercent = (oPlayer.hp / oPlayer.hpMax) * 100;

// Set the color based on the player's health
if (healthPercent >= 70) {
    draw_set_color(c_green);  // Green for 70-100%
} else if (healthPercent >= 30) {
    draw_set_color(c_yellow);  // Yellow for 30-69%
} else {
    draw_set_color(c_red);  // Red for 0-29%
}

// Draw the filled portion of the health bar (current health)
draw_rectangle(marginX, marginY, marginX + (healthPercent / 100) * barWidth, marginY + barHeight, false);

// Draw the background of the health bar (empty part)
draw_set_color(c_black);  // Black for the background
draw_rectangle(marginX, marginY, marginX + barWidth, marginY + barHeight, true);

// Optionally, display the health number above the bar
draw_set_color(c_white);  // Set text color to white
draw_text(marginX, marginY - 15, string(oPlayer.hp) + " / " + string(oPlayer.hpMax));
