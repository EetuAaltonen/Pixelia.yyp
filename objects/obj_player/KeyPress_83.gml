///@description Bow
///Bow
if (global.hudState == "null")
{
    if (action_state != "bow")
    {
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
			}
			else if (!bowFound) {
                scr_add_new_toast("Bow not equipped!");
			}
			else if (!arrowFound) {
                scr_add_new_toast("Arrows not equipped!");
			}
		}
    }
    else if (action_state == "bow")
    {
        action_state = "null";
        sprite_index = spr_player;
    }
}

