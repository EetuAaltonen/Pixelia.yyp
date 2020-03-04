var positionX = scr_pos_to_gui(x, Dim.X);
var positionY = scr_pos_to_gui(y, Dim.Y);
var posX = scr_draw_camera_position_to_gui(positionX, "x");
var posY = scr_draw_camera_position_to_gui(positionY, "y");

//Draw Self
draw_sprite_ext(sprite_index, 0, posX, posY, global.resWAspect, global.resHAspect, image_angle, c_white, 1);