if (room == Menu || 
	(global.hudState != HudStates.Null &&
	global.hudState != HudStates.RoomChange
	&& room != First_loading &&
	global.hudState != HudStates.Minigame)) {
	var posX = mouse_x - camera_get_view_x(view_camera[0]);
	var posY = mouse_y - camera_get_view_y(view_camera[0]);
	posX *= GuiWidth/camera_get_view_width(view_camera[0]);
	posY *= GuiHeight/camera_get_view_height(view_camera[0]);

	draw_sprite_ext(spr_mouse, 0, posX, posY, 2, 2, image_angle, c_white, 1);

	scr_draw_set_font(
		fnt_draw_gui_small,
		fa_left, fa_bottom,
		c_orange, 1
	);

	if (posX > (GuiWidth / 2)) {
		draw_set_halign(fa_right);	
	}
	
	var yTextMargin = -40;
	if (posY < (GuiHeight/ 2)) {
		yTextMargin = 80;
	}

	var posString = string(posX) + " | " + string(posY); 
	draw_text(posX, posY + yTextMargin, posString);
}