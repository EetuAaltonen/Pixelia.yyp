//scr_item_info_struct()

//Returns An Item Info By Index
var indexName = argument0;
var item = argument1;
if (item != "null") {
	if (is_array(item)) {
		var infoIndexes = [
			"sprite",
			"name",
			"type",
			"count",
			"durability",
			"weight",
			"price",
			"effect",
			"effectAmount",
			"reqLevel"
		]
		var indexCount = array_length_1d(infoIndexes);
		var i;
		for (i = 0; i < indexCount; i++) {
			if (indexName == infoIndexes[i]) {
				return item[i];
			}
		}
		show_message("There Is A Typo In Code(scr_item.gml: argument: 'indexName')");
	}
}
