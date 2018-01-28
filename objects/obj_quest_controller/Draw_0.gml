var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

draw_sprite_ext(spr_inv_item_description_bg, image_index, viewX+355, viewY+4,
                image_xscale, image_yscale, image_angle, c_white, image_alpha);