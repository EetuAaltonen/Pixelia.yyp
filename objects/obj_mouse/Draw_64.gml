if (room == Menu || 
	(global.hudState != HudStates.Null &&
	global.hudState != HudStates.RoomChange
	&& room != First_loading &&
	global.hudState != HudStates.Minigame)) {
	var posX = scr_position_to_gui(mouse_x, "x");
	var posY = scr_position_to_gui(mouse_y, "y");
	draw_sprite_ext(spr_mouse, 0, posX, posY, global.resWAspect, global.resHAspect, image_angle, c_white, 1);
}