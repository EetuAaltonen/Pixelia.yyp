var data = argument0;
var infoText = "";

var description;
var info = scr_item_info_struct();
var mark = scr_item_mark_struct();
var i, j = 0;
var arraySize = array_length_1d(data);
for (i = 0; i < arraySize; i++) {
	description = undefined;
	if (data[i] != "null") {
		switch (i) {
			case ItemData.Effect: {
				// Replace Effect Code With Name
				description = info[i] + scr_item_search_effect(data[i], "key") + mark[i];
			}
			case ItemData.Weight: {
				description = info[i] + string(data[i]) + mark[i];
				if (data[ItemData.Count] > 1) {
					// Calculate Stack Weight
					description += " (" + string(data[i] * data[ItemData.Count]) + ")";
				}
			}
			case ItemData.Price: {
				description = info[i] + string(data[i]) + mark[i];
				if (data[ItemData.Count] > 1) {
					// Calculate Stack Price
					description += " (" + string(data[i] * data[ItemData.Count]) + ")";
				}
			}
			default: {
				if (i == ItemData.Name || i == ItemData.Count || i == ItemData.Durability ||
					i == ItemData.Effect || i == ItemData.EffectAmount || i == ItemData.EffectDuration ||
					i == ItemData.RequiredLevel) {
					description = info[i] + string(data[i]) + mark[i];
					if (data[i] == -1) {
						description = info[i] + "---" + mark[i];
					}
				}
			}
		}
		if (description != undefined) { infoText[j++] = description; }
	}
}
return infoText;