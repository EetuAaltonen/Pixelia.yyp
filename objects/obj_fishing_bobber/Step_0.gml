// Fly to water
if (controller.fishingState = Fishing.ThrowBobber) {
    move_towards_point(fishSwarm.x, fishSwarm.y - distance_to_object(fishSwarm), 2); 
    if (distance_to_object(fishSwarm) < 1) {
        hspeed = 0;
        vspeed = 0;
        //Animation
        alarm[1] = round(random_range(50, 80));
		
		controller.fishingState = Fishing.WaitCatch;
		controller.alarm[2] = irandom_range(controller.minCatchTime, controller.maxCatchTime);
    }
}

// Fly to player
if (controller.fishingState = Fishing.Pull) {
    move_towards_point(obj_player.x, obj_player.y - (distance_to_object(obj_player)/3), 3); 
    if (distance_to_object(obj_player) < 1) {
		var lootList = scr_calc_drop_odds(LootTable.CommonFishes, 1);
		var fishData = ds_list_find_value(lootList, 0);
		if (scr_inventory_check_capacity(fishData[ItemData.Weight], true)) {
			scr_inventory_add_item(fishData, fishData[ItemData.Count]);
			scr_add_new_toast(fishData[ItemData.Name] + " cautch!")
		} else {
			scr_create_dropped_item(fishData, fishData[ItemData.Count]);
		}
		controller.fishingState = undefined;
		global.hudState = HudStates.Null;
        scr_plr_set_action_state_null();
		instance_destroy();
    }
}