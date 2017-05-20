var Ypos;
var YposPlus = 10;
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewXCenter = camera_get_view_width(view_camera[0])/2;
var viewYCenter = camera_get_view_height(view_camera[0])/2;

//Font
draw_set_font(fnt_loot_text);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var items = ["helmet", "platebody", "plateleg", "boots"];
var itemAmount = array_length_1d(items);
for (var i = 0; i < itemAmount; i++) {
	var margin = (YposPlus*i);
	draw_text(viewX + 250, viewY + 100 + margin, items[i]);
}