/// @description Status Effects
/*
	effect {
		timer,
		name,
		effet value (like damage)
	}

*/
var listSize = ds_list_size(statusEffects);
if (listSize > 0) {
	var list = statusEffects;
	var i = 0;
	var effect;
	for (i = 0; i < listSize; i++) {
		effect = ds_list_find_value(list, i);
		if (effect[0] > 0) {
			effect[0] -= 1;
			if (effect[0] == 0) {
				ds_list_delete(list, i);
				listSize = ds_list_size(statusEffects);
				i--;
			}
		}
	}
	alarm[0] = scr_time_sec_to_alarm(global.statusEffectTimer);
}
	
