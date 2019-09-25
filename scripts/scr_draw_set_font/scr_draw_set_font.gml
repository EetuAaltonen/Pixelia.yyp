/// @description Sets font and text properties
/// @param font
/// @param hAling
/// @param vAling
/// @param color
/// @param alpha
/// @return void

var font = argument0;
var hAling = argument1;
var vAling = argument2;
var color = argument3;
var alpha = argument4;

draw_set_font(font);
draw_set_halign(hAling);
draw_set_valign(vAling);
draw_set_color(color);
draw_set_alpha(alpha);