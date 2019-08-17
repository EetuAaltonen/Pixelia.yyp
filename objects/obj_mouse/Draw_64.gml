var positionX = scr_draw_position_on_screen(mouse_x, "x");
var positionY = scr_draw_position_on_screen(mouse_y, "y");
var posX = scr_draw_camera_position_to_gui(positionX, "x");
var posY = scr_draw_camera_position_to_gui(positionY, "y");
	
if (room == Menu ||
	global.hudState != HudStates.Null && global.hudState != HudStates.RoomChange &&
	room != Menu && room != First_loading) {
	draw_sprite_ext(spr_mouse, 0, posX, posY, global.resWAspect, global.resHAspect, image_angle, c_white, 1);
}