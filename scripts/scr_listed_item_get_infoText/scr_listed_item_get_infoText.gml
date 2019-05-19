var data = argument0;
var infoText = "";

var description;
var info = scr_item_info_struct();
var mark = scr_item_mark_struct();
var i, j = 0;
var arraySize = array_length_1d(data);
for (i = 0; i < arraySize; i++) {
	if (data[i] != "null") {
		if (i == 1 || i == 3 || i == 7 || i == 8 ||
			i == 9 || i == 10 || i == 11 || i == 12 || i == 13) {
			description = info[i] + string(data[i]) + mark[i];
			if (data[i] == -1) {
				description = info[i] + "---" + mark[i];
			}
			if (i == 8 && data[i] != "null") {
				//Replace Effect Code With Name
				description = info[i] + scr_item_search_effect(data[i], "key") + mark[i];
			}
			else if (i == 11 && data[3] > 1) {
				//Calculate Stack Weight
				description += " (" + string(data[i] * data[3]) + ")";
			} else if (i == 12 && data[3] > 1) {
				//Calculate Stack Price
				description += " (" + string(data[i] * data[3]) + ")";
			}
			infoText[j++] = description;
		}
	}
}
return infoText;