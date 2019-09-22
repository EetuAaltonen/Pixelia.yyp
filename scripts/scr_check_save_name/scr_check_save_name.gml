// Check text length
if (instance_exists(obj_search_box)) {
    if (string_length(obj_search_box.txt) >= 4 &&
        obj_search_box.txt != obj_search_box.place_holder) {
        image_blend= scr_highlight_default_value();
		
		var count = instance_number(obj_menu_saved_game);
		var save;
		var i;
		for (i = 0; i < count; i++) {
			save = instance_find(obj_menu_saved_game, i);
			if (save.load_file == obj_search_box.txt) {
			    infoText = tempInfoText;
			} else {
				infoText = "Create New";
			}
		}
		
    } else {
        image_blend = scr_highlight_value();
    }
}