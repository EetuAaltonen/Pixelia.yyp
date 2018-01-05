draw_self();
//Highlight self
scr_highlight_self();

//Draw Info Text
if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) <= 10) {
		//Font
		draw_set_font(fnt_inventory_text);
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		draw_text(x, y-(sprite_height/2)-5, infoText);
	}
}