///Fly to water
if (!inWater) {
    move_towards_point((instance_nearest(x, y, obj_fishing_vein)).x,
                       ((instance_nearest(x, y, obj_fishing_vein)).y - 
                       distance_to_object(instance_nearest(x, y, obj_fishing_vein))), 2); 
    if (distance_to_object(obj_fishing_vein) < 1) {
        hspeed = 0;
        vspeed = 0;
        inWater = true;
        //Time to fishing minigame
        //Time to spawn a fish
        //obj_fishing_vein.alarm[1] = (round(random(300)) + 300);
        //Animation
        alarm[1] = round(random_range(50, 80));
    }
}

///Fly to player
if (toPlayer) {
    move_towards_point(obj_player.x, obj_player.y - (distance_to_object(obj_player)/3), 3); 
    if (distance_to_object(obj_player) < 1) {
		var fishData = ds_list_find_value(items, 0);
		if (scr_inventory_check_capacity(fishData[ItemData.Weight], true)) {
			
		} else {
			//Instance create dropped item
            sprite_index_item = spr_icon_salmon;
			scr_crete_droped_item(fishData, fishData[ItemData.Count]);
            var instance = instance_create(x, y, obj_dropped_item);
            instance.sprite_index = sprite_index_item;
            instance.typeId = typeId;
            instance.get_attributes = true;
		}
        hspeed = 0;
        vspeed = 0;
        var rndNumber = random_range(0.01, 1);
        //show_message(string(rndNumber) + "<" + string(catchChange));
        if (rndNumber < catchChange) {
            
        }
		global.hudState = HudStates.Null;
        scr_plr_set_action_state_null();
    }
}