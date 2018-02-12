var positionX = scr_draw_position_on_screen(x, "x");
var positionY = scr_draw_position_on_screen(y, "y");
var posX = scr_draw_camera_position_to_gui(positionX, "x");
var posY = scr_draw_camera_position_to_gui(positionY, "y");

//Draw Self
draw_sprite_ext(sprite_index, 0, posX, posY, global.resWAspect, global.resHAspect, image_angle, c_white, 1);