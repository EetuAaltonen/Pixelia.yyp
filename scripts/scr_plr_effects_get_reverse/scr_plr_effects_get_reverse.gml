var effect = argument0;
var i, data;
var effectList = scr_effect_pairs();
var effectsCount = array_length_1d(effectList);
var effectPairs = ds_list_create();

for(i = 0; i < effectsCount; i++) {
	data = effectList[i];
	if (effect == data[0] || effect == data[1]) {
		ds_list_add(effectPairs, effectList[i]);
	}
}
if (ds_list_size(effectPairs) > 0) {
	return effectPairs;
}
return "null";