/// @description Draws retangle with specified configures on screen
/// @param xPos
/// @param yPos
/// @param width
/// @param height
/// @param color
/// @param alpha
/// @param centered
/// @return void
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

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
draw_rectangle(viewX+xPos, viewY+yPos, viewX+xPos+width, viewY+yPos+height, false);
// Default alpha
draw_set_alpha(1);