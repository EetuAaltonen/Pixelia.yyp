image_blend = make_colour_hsv(0, 0, 150);
if (instance_exists(obj_search_box)) {
	if (string_length(obj_search_box.txt) >= 4) {
		var count = instance_number(obj_menu_saved_game);
		var save;
		var i;
		for (i = 0; i < count; i++) {
			save = instance_find(obj_menu_saved_game, i);
			///Check text length
			if (save.load_file == obj_search_box.txt) {
			    image_blend = make_colour_hsv(0, 0, -1);
			}
		}
	}
}