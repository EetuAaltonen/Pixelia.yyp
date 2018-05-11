if (instance_exists(obj_search_box)) {
    obj_search_box.txt = string(load_file);
    keyboard_string = obj_search_box.txt;
    obj_search_box.selected = false;
	
	scr_menu_active_delete_button_check();
}

