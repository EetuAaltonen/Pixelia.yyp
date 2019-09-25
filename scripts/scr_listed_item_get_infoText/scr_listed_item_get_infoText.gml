var data = argument0;
var infoText = array_create(ItemInfoText.Details + 1);

var details = "";
var lineBreak = "#";
var info = scr_item_info_struct();
var mark = scr_item_mark_struct();
var i;
var arraySize = array_length_1d(data);
for (i = 0; i < arraySize; i++) {
	if (data[i] != "null") {
		switch (i) {
			case ItemData.Sprite: {
				infoText[ItemInfoText.Sprite] = data[ItemData.Sprite];
			}break;
			case ItemData.Name: {
				infoText[ItemInfoText.Name] = data[ItemData.Name];
			}break;
			case ItemData.Description: {
				infoText[ItemInfoText.Description] = data[ItemData.Description];
			}break;
			case ItemData.Effect: {
				// Replace Effect Code With Name
				details += info[i] + scr_item_search_effect(data[i], "key") + mark[i];
				details += lineBreak;
			}break;
			case ItemData.Weight: {
				details += info[i] + string(data[i]) + mark[i];
				if (data[ItemData.Count] > 1) {
					// Calculate Stack Weight
					details += " (" + string(data[i] * data[ItemData.Count]) + ")";
				}
				details += lineBreak;
			}break;
			case ItemData.Price: {
				details = info[i] + string(data[i]) + mark[i];
				if (data[ItemData.Count] > 1) {
					// Calculate Stack Price
					details += " (" + string(data[i] * data[ItemData.Count]) + ")";
				}
				details += lineBreak;
			}break;
			default: {
				if (i == ItemData.Description || i == ItemData.Count || i == ItemData.Durability ||
					i == ItemData.Effect || i == ItemData.EffectAmount || i == ItemData.EffectDuration ||
					i == ItemData.RequiredLevel) {
					details += info[i] + string(data[i]) + mark[i];
					if (data[i] == -1) {
						details += info[i] + "---" + mark[i];
					}
					details += lineBreak;
				}
			}
		}
	}
}
infoText[ItemInfoText.Details] = details;
return infoText;