/// @description Draws retangle with specified configures on screen
/// @param xPos
/// @param yPos
/// @param width
/// @param height
/// @param color
/// @param alpha
/// @param centered
/// @return void

var xPos = argument0;
var yPos = argument1;
var width = argument2;
var height = argument3;
var color = argument4;
var alpha = argument5;
var centered = argument6;

if (centered) {
	xPos -= width / 2;
	yPos -= height / 2;
}

draw_set_colour(color);
draw_set_alpha(alpha);
draw_rectangle(xPos, yPos, xPos+width, yPos+height, false);
// Default values
draw_set_colour(c_black);
draw_set_alpha(1);