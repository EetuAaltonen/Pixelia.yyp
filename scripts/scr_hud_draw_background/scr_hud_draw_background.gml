/// @description Draws retangle with specified configures on screen
/// @param xPos
/// @param yPos
/// @param width
/// @param height
/// @param color
/// @param alpha
/// @param wCentered
/// @param hCentered
/// @return void

var xPos = argument0;
var yPos = argument1;
var width = argument2;
var height = argument3;
var color = argument4;
var alpha = argument5;
var wCentered = argument6;
var hCentered = argument7;

if (wCentered) {
	xPos -= width / 2;
}
if (hCentered) {
	yPos -= height / 2;
}

draw_set_colour(color);
draw_set_alpha(alpha);
draw_rectangle(xPos, yPos, xPos+width, yPos+height, false);
// Default values
draw_set_colour(c_black);
draw_set_alpha(1);