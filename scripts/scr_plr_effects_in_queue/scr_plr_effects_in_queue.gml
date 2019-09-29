var i;
var data;
var buffsCount = array_length_1d(global.equipments);
for (i = 0; i < buffsCount; i++) {
	data = global.equipments[i];
	if (data != "") {
		scr_plr_effects_add(data[ItemData.Effect], data[ItemData.EffectAmount], data[ItemData.EffectDuration]);
	}
}