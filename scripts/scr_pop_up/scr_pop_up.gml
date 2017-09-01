var text = argument0;

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
//Font
draw_set_font(fnt_small_text);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var stringWidth = string_width(text);
var stringHeight = string_height(text);
draw_sprite_ext(spr_popup_bg,0,viewX+((viewWidth/2)-((stringWidth/2)+10)),
				viewY+((viewHeight/2)-((stringHeight/2)+10)),
				1*(stringWidth+20),1*(stringHeight+20),0,c_white,0.8);
draw_text(viewX+(viewWidth/2),viewY+(viewHeight/2),text);