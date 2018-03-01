var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

///Create menu buttons and change view
if (room == Menu) {   
    if (createButtons == true) {
		createButtons = false;
		if (instance_exists(obj_menu_button)) {
			with (obj_menu_button) instance_destroy();
		}
		if (instance_exists(obj_menu_orb_of_euphoria)) {
			with (obj_menu_orb_of_euphoria) instance_destroy();
		}
		if (instance_exists(obj_menu_orb_of_dysforia)) {
			with (obj_menu_orb_of_dysforia) instance_destroy();
		}
		if (instance_exists(obj_menu_text_box)) {
			with (obj_menu_text_box) instance_destroy();	
		}
		if (instance_exists(obj_menu_saved_game)) {
			with (obj_menu_saved_game) instance_destroy();	
		}
        if (menuState == "mainMenu") {
			scr_menu_create_main_buttons();
        } else if (menuState == "loadGame") {
			scr_menu_create_load_buttons();
        } else if (menuState == "achievements") {
			scr_menu_create_achievements_buttons();
        } else if (menuState == "settings") {
			scr_menu_create_resolution_buttons();
        }
    }
}

///Read saves
if (searchSaves) {
	var a;
	var i;
	var version;
    searchSaves = false;
    //Clear temp saves
    for (a = 0; a < 8; a++) {
        Saves[a] = "no_saves"
    }
    file = file_find_first("*.sav", 0);
    if (file_exists(file)) {
        if (string(file) == "Inventory.ini" || string(file) == "SkillTree.ini") {
            file = file_find_next();
        }
        if (file_exists(file)) {
            Saves[0] = string_replace(file, ".sav", "");
        }
    }
    
    if (file_exists(file) && string(file) != "Inventory.ini" && string(file) != "SkillTree.ini") {
        var margin_bottom = 22;
        var x_pos = 350;
        var y_pos = 105;
        instance_create(view_xview+x_pos, view_yview+y_pos,obj_menu_saved_game);
        (instance_nearest(view_xview + x_pos, view_yview + y_pos,obj_menu_saved_game)).load_file = string_replace(file, ".sav", "");
        if (file_exists(file)) {
            ini_open(file);
            (instance_nearest(view_xview + x_pos, view_yview + y_pos,obj_menu_saved_game)).Datetime = ini_read_string(file,"last_played","");
            version = ini_read_string(file,"game_version","null");
			if (version != global.gameVersion) {
				(instance_nearest(view_xview + x_pos, view_yview + y_pos,obj_menu_saved_game)).outDated = true;	
			}
			ini_close();
        }
		for (i = 1; i <= 7; i++) {
            file = file_find_next();
            if (string(file) == "Inventory.sav" || string(file) == "SkillTree.sav") {
                file = file_find_next();
            }
            if (file_exists(file) && string(file) != "Inventory.sav") {
                instance_create(view_xview+x_pos, view_yview+y_pos+(margin_bottom*i),obj_menu_saved_game);
                (instance_nearest(view_xview+x_pos, view_yview+y_pos+(margin_bottom*i),obj_menu_saved_game)).load_file = string_replace(file, ".sav", "");
                Saves[i] = string_replace(file, ".sav", "");
                if (file_exists(file)) {
                    ini_open(file);
                    (instance_nearest(view_xview+x_pos, view_yview+y_pos+(margin_bottom*i),obj_menu_saved_game)).Datetime = ini_read_string(file,"last_played","");
					version = ini_read_string(file,"game_version","null");
					if (version != global.gameVersion) {
						(instance_nearest(view_xview+x_pos, view_yview+y_pos+(margin_bottom*i),obj_menu_saved_game)).outDated = true;	
					}
                    ini_close();
                }
            } else {
                i = 7; //7(+1) > 7
            }
        }
    }
}

//Darkness Effect
if (darknessEffect) {
	if (instance_exists(obj_area_darkness)) {
		if (darknessAlpha < darknessMax && alarm[2] <= 0) {
			alarm[2] = scr_time_sec_to_alarm(transitionSpeed);
		}
	} else {
		darknessEffect = false;
	}
} else {
	if (darknessAlpha > 0 && alarm[2] <= 0) {
		alarm[2] = scr_time_sec_to_alarm(transitionSpeed);
	}
}