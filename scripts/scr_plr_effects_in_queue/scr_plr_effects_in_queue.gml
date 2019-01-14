var i;
var data;
var buffsCount = array_length_1d(global.equipments);
for (i = 0; i < buffsCount; i++) {
	data = global.equipments[i];
	if (data != "") {
		scr_plr_effects_add(data[7], data[8], data[9]);
	}
}