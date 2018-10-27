var effectTime = argument0;
var effectName = argument1;
var effectValue = argument2;

var listSize = ds_list_size(statusEffects);
if (listSize > 0) {
	var list = statusEffects;
	var i = 0;
	var effect;
	for (i = 0; i < listSize; i++) {
		effect = ds_list_find_value(list, i);
		if (effectName == effect[1]) {
			//Check if status effect is permanent
			if (effect[0] > 0) {
				//Remove status effect
				if (effectTime == 0) {
					ds_list_delete(statusEffects, i);
					return;
				}
				//If value can be negative
				effect[0] += effectTime;
				//Remove status effect of timer <= 0
				if (effect[0] <= 0) {
					ds_list_delete(statusEffects, i);
					return;
				}
				effect[2] += effectValue;
				//Start the alarm if it's stopped
				if (alarm[0] < 0) {
					alarm[0] = scr_time_sec_to_alarm(global.statusEffectTimer);
					return;
				}
			}
		}
	}
}
//Adds new status effect if not exists already
ds_list_add(statusEffects, [effectTime, effectName, effectValue]);
alarm[0] = scr_time_sec_to_alarm(global.statusEffectTimer);