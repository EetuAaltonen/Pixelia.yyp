var name = argument0;
var loots = scr_enemy_loot_list();
var count = array_length_1d(loots);
var i;
var data;
for (i = 0; i < count; i++) {
	data = loots[i];
	if (string_pos(name, data[0]) != 0) {
		return data;
	}
}
return;