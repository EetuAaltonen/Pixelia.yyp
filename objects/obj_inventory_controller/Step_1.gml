///Coins and auto healing??
if (global.coins < 0) {
    global.coins = 0;
}

//Auto-healing
if (global.auto_healing == 1
    and global.potions > 0
    and global.healthPoints < 5) {
    global.potions -= 1;
    global.healthPoints += 10;
}

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

///Open inventory
if (keyboard_check_pressed(vk_tab)) {
	if (global.hudState == "null") {
	    if (instance_exists(obj_player)) {
	        if (obj_player.actionState == "null") {
				global.hudState = "inventoryBackpack";
	            updateValues = true;
	            pageIndex = 1;
	            filter = "null";
	            //Create buttons
	            var buttons = [
					obj_inv_backpack_button,
					obj_inv_equipments_button,
					obj_inv_skill_tree_button,
					obj_inv_stats_button,
					obj_inv_save_exit_button,
					obj_inv_close_button
				];
				var margin = 5;
	            var arrayLength = array_length_1d(buttons);
	            for (var i = 0; i < arrayLength; i++) {
	                instance_create(viewX+4+(i*(85+margin)), viewY+40, buttons[i]);
	            }
	        }
	    }
	} else if (string_pos("inventory", string(global.hudState))) {    
	    global.hudState = "null";
		//Destroy Listed Items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}
		//Destroy Search Box
		if (instance_exists(obj_menu_text_box)) {
			with (obj_menu_text_box) instance_destroy();
		}
	    updateValues = true;
	    scr_savegame();
	}
}

///Page change
scr_page_change();

