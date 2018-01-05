var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

if (drawViewAlpha) {
	draw_sprite_ext(spr_darkness, 0, viewX, viewY, viewWidth, viewHeight, 0, c_white, viewAlpha);
}

//Font
draw_set_font(fnt_menu_buttons);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (pause || unfocus) {
    draw_text(viewX + (viewWidth/2), viewY + (viewHeight/2), string_hash_to_newline("Pause"));
}

//Darkness Effect
if (instance_exists(obj_area_darkness)) {
	if (darknessAlpha > 0 && global.hudState == "null") {
		draw_sprite_ext(spr_darkness, 0, viewX, viewY, viewWidth, viewHeight, 0, c_white, darknessAlpha);
	}
}

