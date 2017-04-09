///scr_check_if_equipped(argument0)
/*var type = argument0;
var equipped = false;
if (string_pos("inventoryEquipments", type)) {
	var listSize = ds_list_size(global.equipments);
	for (i = 0; i < listSize; i++) {
		var equipment = ds_list_find_value(global.equipments, i);
		if (equipment == spriteName) {
			equipped = true;
			break;
		}
	}
}
return equipped;
