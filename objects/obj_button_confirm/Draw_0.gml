draw_self();

//Visibility
/*if (global.hudState == "inventorySkills") {
	if (obj_inventory_controller.globalPrimaryAttributesValues == global.skillPrimaryAttributesValues) {
		visible = false;
	} else {
		visible = true;
	}
}*/
/*//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_text(__view_get( e__VW.XView, 0 )+250,__view_get( e__VW.YView, 0 )+150, string_hash_to_newline(string(value) + " / " + string(item_count)));

draw_set_halign(fa_center);
draw_text(x, y, string_hash_to_newline("Confirm"));

