var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

display_set_gui_size(viewWidth, viewHeight);

///Inventory
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == HudStates.Inventory ||
	global.hudState == HudStates.Crafting ||
	global.hudState == HudStates.Shop) {
	// Background
	scr_hud_draw_background(
		viewX + 0, viewY + 0,
		viewWidth, viewHeight,
		make_color_rgb(102, 86, 61),
		1, false
	);

	// Grid background
	scr_inventory_draw_background();
}