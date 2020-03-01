var posX = mouse_x - camera_get_view_x(view_camera[0]);
var posY = mouse_y - camera_get_view_y(view_camera[0]);
posX *= display_get_gui_width()/camera_get_view_width(view_camera[0]);
posY *= display_get_gui_height()/camera_get_view_height(view_camera[0]);

draw_sprite_ext(spr_mouse, 0, posX, posY, 2, 2, image_angle, c_white, 1);

scr_draw_set_font(
	fnt_draw_gui_small,
	fa_left, fa_bottom,
	c_orange, 1
);
	
if (posX > (display_get_gui_width() / 2)) {
	draw_set_halign(fa_right);	
}
	
var yTextMargin = -40;
if (posY < (display_get_gui_height() / 2)) {
	yTextMargin = 80;
}

var posString = string(posX) + " | " + string(posY); 
draw_text(posX, posY + yTextMargin, posString);



/*var posX = scr_position_to_gui(mouse_x, "x");
var posY = scr_position_to_gui(mouse_y, "y");

if (room == Menu || 
	(global.hudState != HudStates.Null &&
	global.hudState != HudStates.RoomChange
	&& room != First_loading &&
	global.hudState != HudStates.Minigame)) {
	
	draw_sprite_ext(spr_mouse, 0, posX, posY, global.resWAspect, global.resHAspect, image_angle, c_white, 1);
	
	// Mouse position on screen
	var mouseX = window_mouse_get_x();
	var mouseY = window_mouse_get_y();
	scr_draw_set_font(
		fnt_draw_gui_small,
		fa_left, fa_bottom,
		c_orange, 1
	);
	
	if (mouseX > guiWidth / 2) {
		draw_set_halign(fa_right);	
	}
	
	var yTextMargin = -40;
	if (mouseY < guiHeight / 2) {
		yTextMargin = 80;
	}

	var pos = string(mouseX) + " | " + string(mouseY); 
	draw_text(posX, posY + yTextMargin, pos);
}