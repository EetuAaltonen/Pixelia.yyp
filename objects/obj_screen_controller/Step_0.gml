var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

if (room != Menu && room != First_loading) {
	if (instance_exists(obj_player)) {
		if (targetRoom != currenRoom && alarm[1] <= 0) {
			obj_player.actionState = "idle";
			global.hudState = "roomChange";
			
			drawViewAlpha = true;
			alarm[1] = scr_to_sec(transitionSpeed);
		} else if (targetRoom == currenRoom && alarm[1] <= 0 && viewAlpha == 1) {
			obj_player.actionState = "idle";
			global.hudState = "roomChange";
	
			drawViewAlpha = true;
			alarm[1] = scr_to_sec(transitionWaitTime);
		}
	}
}

///Create menu buttons and change view
if (room == Menu) {   
    if (create_buttons == true) {
        if (menu_state == "main_menu") {
            instance_create(view_xview + 250, view_yview + 112, obj_menu_play);
            instance_create(view_xview + 250, view_yview + 160, obj_menu_achievements);
            instance_create(view_xview + 250, view_yview + 208, obj_menu_options);
            instance_create(view_xview + 250, view_yview + 256, obj_menu_quit);
        } else if (menu_state == "load_game") {
            instance_create(view_xview + 100, view_yview + 112, obj_menu_text_box);
            instance_create(view_xview + 100, view_yview + 160, obj_menu_load_game);
            instance_create(view_xview + 100, view_yview + 208, obj_menu_delete);
            instance_create(view_xview + 100, view_yview + 256, obj_menu_back);
            searchSaves = true; 
        }
        create_buttons = false;
    }
}

///Read saves
if (searchSaves) {
	var a;
	var i;
    searchSaves = false;
    //Clear temp saves
    for (a = 0; a < 8; a++) {
        Saves[a] = "no_saves"
    }
    file = file_find_first("*.sav", 0);
    if (file_exists(file)) {
        if (string(file) == "Inventory.sav" || string(file) == "SkillTree.sav") {
            file = file_find_next();
        }
        if (file_exists(file)) {
            Saves[0] = string_replace(file, ".sav", "");
        }
    }
    
    if (file_exists(file) && string(file) != "Inventory.sav" && string(file) != "SkillTree.sav") {
        var margin_bottom = 22;
        var x_pos = 250;
        var y_pos = 96;
        instance_create(view_xview+x_pos, view_yview+y_pos,obj_menu_saved_game);
        (instance_nearest(view_xview + x_pos, view_yview + y_pos,obj_menu_saved_game)).load_file = string_replace(file, ".sav", "");
        if (file_exists(file)) {
            ini_open(file);
            (instance_nearest(view_xview + x_pos, view_yview + y_pos,obj_menu_saved_game)).Datetime = ini_read_string(file,"last_played","");
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
			alarm[2] = scr_to_sec(transitionSpeed);
		}
	} else {
		darknessEffect = false;
	}
} else {
	if (darknessAlpha > 0 && alarm[2] <= 0) {
		alarm[2] = scr_to_sec(transitionSpeed);
	}
}