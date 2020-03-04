// Fetch files to save list
if (fetchSave) {
	fetchSave = false;
	// TODO: Simplify save fetch logic
	var a, i;
	var version;
    //Clear temp saves
    for (a = 0; a < 8; a++) {
        Saves[a] = "no_saves"
    }
    var file = file_find_first("*.sav", 0);
    if (file_exists(file)) {
        if (string(file) == InventoryFile || string(file) == SkillFile) {
            file = file_find_next();
        }
        if (file_exists(file)) {
            Saves[0] = string_replace(file, ".sav", "");
        }
    }
    
    if (file_exists(file) && string(file) != InventoryFile && string(file) != SkillFile) {
        var margin_bottom = 22;
        var xPos = 350;
        var yPos = 105;
        var instance = instance_create(view_xview + xPos, view_yview + yPos, obj_menu_saved_game);
        instance.load_file = string_replace(file, ".sav", "");
        if (file_exists(file)) {
            ini_open(file);
            instance.Datetime = ini_read_string(file,"last_played","");
            version = ini_read_string(file,"game_version","null");
			if (version != GameVersion) {
				instance.outDated = true;	
			}
			ini_close();
        }
		for (i = 1; i <= 7; i++) {
            file = file_find_next();
            if (string(file) == "Inventory.sav" || string(file) == "SkillTree.sav") {
                file = file_find_next();
            }
            if (file_exists(file) && string(file) != "Inventory.sav") {
                var instance = instance_create(view_xview+xPos, view_yview+yPos+(margin_bottom*i),obj_menu_saved_game);
                instance.load_file = string_replace(file, ".sav", "");
                Saves[i] = string_replace(file, ".sav", "");
                if (file_exists(file)) {
                    ini_open(file);
                    instance.Datetime = ini_read_string(file,"last_played","");
					version = ini_read_string(file,"game_version","null");
					if (version != GameVersion) {
						instance.outDated = true;
					}
                    ini_close();
                }
            } else {
                i = 7;
            }
        }
    }
}