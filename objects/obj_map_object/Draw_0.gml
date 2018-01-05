if (sprite_index != spr_no_mask) {
	draw_self();
}

//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (distance_to_object(obj_mouse) == 0) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
		
	var onViewX = (x-viewX);
	var onViewY = (y-viewY);
		
	draw_text(x, y-30, infoText);
	draw_text(x, y-20, string(onViewX) + ", " + string(onViewY));
}