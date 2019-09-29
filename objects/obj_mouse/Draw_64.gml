var posX = scr_position_to_gui(mouse_x, "x");
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