/*Effect {
	name; 0
	amount; 1
	duration; 2
}*/

var effect = argument0;
var amount = argument1;
var duration = argument2;
var addEffect = true;
var i, data, effectsCount;

if (!scr_plr_effects_exists(effect)) {	
	var effectPair = scr_plr_effects_get_reverse(effect);
	if (effectPair != "null") {
		effectsCount = ds_list_size(effectPair);
		//Check if can be added
		for (i = 0; i < effectsCount; i++) {
			data = ds_list_find_value(effectPair, i);
			if (data[0] == effect) {
				if (scr_plr_effects_exists(data[1])) {
					addEffect = false;
					break;
				}
			} 
		}
		if (addEffect) {
			//Check if reverse effect need to be removed
			for (i = 0; i < effectsCount; i++) {
				data = ds_list_find_value(effectPair, i);
				if (data[1] == effect) {
					if (scr_plr_effects_exists(data[0])) {
						scr_plr_effects_remove(data[0]);
					}
				} 
			}
		}
	} else {
		addEffect = false;
	}
	
	if (addEffect) {
		if (!ds_list_size(global.buffs)) {
			obj_statistics_controller.alarm[0] = global.alarmTicks;	
		}
		ds_list_add(global.buffs, [effect, amount, duration]);
	}
} else {
	//Update amount and duration
	effectsCount = ds_list_size(global.buffs);
	
	for (i = 0; i < effectsCount; i++) {
		data = ds_list_find_value(global.buffs, i);
		if (data[0] == effect) {
			ds_list_replace(global.buffs, i, [effect, amount, duration]);
		} 
	}
}