// Variables for margin and health bar dimensions
var marginX = 20;  // Margin from the left
var marginY = 20;  // Margin from the top
var barWidth = 200;  // Width of the health bar
var barHeight = 15;  // Height of the health bar

// Calculate the health percentage
var healthPercent = (oPlayer.hp / oPlayer.hpMax);

draw_set_color(c_black);  // Black for the background (missing health)
draw_rectangle(marginX, marginY, marginX + barWidth, marginY + barHeight, false);  // Draw the entire health bar as black first

if (healthPercent >= 0.7) {
    draw_set_color(c_green);
} else if (healthPercent >= 0.3) {
    draw_set_color(c_yellow);
} else {
    draw_set_color(c_red);
}

draw_rectangle(marginX, marginY, marginX + healthPercent * barWidth, marginY + barHeight, false);  // Draw the filled portion based on the current health

draw_set_color(c_white);  // Set text color to white
draw_text(marginX, marginY - 15, string(oPlayer.hp) + " / " + string(oPlayer.hpMax));
