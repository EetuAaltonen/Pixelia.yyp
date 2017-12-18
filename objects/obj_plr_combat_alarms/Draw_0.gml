/// @description Insert description here
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

if (instance_exists(obj_player)) {
	if (obj_player.sliceStreak > 0) {
		draw_text(viewX + viewWidth - 10, viewY + (viewHeight/2), string(obj_player.sliceStreak));
	}
	draw_text(viewX + viewWidth - 10, viewY + (viewHeight/2) + 10, string(round(obj_player.image_index)));
	draw_text(viewX + viewWidth - 10, viewY + (viewHeight/2) + 20, string(obj_player.sliceCooldown));
	draw_text(viewX + viewWidth - 10, viewY + (viewHeight/2) + 30, string(alarm[1]));
}