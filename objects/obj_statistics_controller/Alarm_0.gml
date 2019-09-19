/// @description Buff timers

/*Effect {
	name; 0
	amount; 1
	duration; 2
}*/

var i;
var data;
var checkQueue = false;
var buffsCount = ds_list_size(global.buffs);
if (buffsCount) {
	for (i = 0; i < buffsCount; i++) {
		data = ds_list_find_value(global.buffs, i);
		if (data[2] != -1) {
			data[2] -= 1;
			if (data[2] == 0) {
				scr_plr_effects_remove(data[0]);
				//These are needed, when item is removed from list and indices changes
				i--;
				buffsCount = ds_list_size(global.buffs);
			
				//Check queue after ongoing timers check
				checkQueue = true;
			} else {
				//Damaging buffs
				scr_plr_effects_damaging(data);
			
				ds_list_replace(global.buffs, i, data);
			}
		}
	}

	if (checkQueue) {
		scr_plr_effects_in_queue();	
	}
	alarm[0] = global.alarmTicks;
}