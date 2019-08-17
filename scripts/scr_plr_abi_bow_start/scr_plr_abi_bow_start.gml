///Bow
if (global.hudState == HudStates.Null) {
	if (actionState != "bow") {
		if (scr_plr_neutral_action_states()) {
			var bowCount = scr_inventory_search_equipment("Bow", "priweapon");
			var arrowCount = scr_inventory_search_equipment("Arrow", "secweapon");
			
			if (bowCount > 0 && arrowCount > 0) {
				actionState = "bow";
	            //instance_create(x, y, obj_plr_aim);
	            instance_create(x, y, obj_plr_bow);
	            obj_plr_bow.arrowCount = arrowCount;//arrowCount;
	            hspeed = 0;
			} else {
				if (!bowCount > 0 && !arrowCount > 0) {
		            scr_add_new_toast("Bow and arrows not equipped!");
				} else if (!bowCount > 0) {
		            scr_add_new_toast("Bow not equipped!");
				} else if (!arrowCount > 0) {
		            scr_add_new_toast("Arrows not equipped!");
				}
			}
		}
	} else {
		/*if (instance_exists(obj_plr_aim)) {
			with (obj_plr_aim) instance_destroy();
		}*/
		if (instance_exists(obj_plr_bow)) {
			with (obj_plr_bow) instance_destroy();
		}
		
		scr_plr_set_action_state_null();	
	}
}
/*if (global.hudState == HudStates.Null) {
    if (action_state != "bow") {
        var bowFound = false;
		var arrowFound = false;
		var listSize = ds_list_size(global.equipments);
		for (var i = 0; i < listSize; i++) {
			equippedItem = ds_list_find_value(global.equipments, i);
			if	(string_pos("bow", equippedItem)) {
				bowFound = true;
			}
			else if	(string_pos("arrow", equippedItem)) {
				arrowFound = true;
			}
			if (bowFound && arrowFound) {
				break;
			}
		}
		if (bowFound && arrowFound) {
			action_state = "bow";
            instance_create(x, y, obj_plr_aim);
            instance_create(x, y, obj_plr_bow);
            obj_plr_bow.arrowCount = 10;//arrowCount;
            hspeed = 0;
		} else {
			if (!bowFound && !arrowFound) {
                scr_add_new_toast("Bow and arrows not equipped!");
			} else if (!bowFound) {
                scr_add_new_toast("Bow not equipped!");
			} else if (!arrowFound) {
                scr_add_new_toast("Arrows not equipped!");
			}
		}
    } else if (action_state == "bow") {
        action_state = "null";
        sprite_index = spr_player;
    }
}