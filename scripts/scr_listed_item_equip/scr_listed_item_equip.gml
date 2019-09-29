var index = argument0;
var listedItem;
var listedItemCount = instance_number(obj_listed_item);
var i;
if (global.equipment[index] != "") {
	for (i = 0; i < listedItemCount; i++) {
		listedItem = instance_find(obj_listed_item, i);
		if (scr_item_compare_items(listedItem.data, global.equipment[index], "full")) {
			listedItem.equipmentIndex = -1;
			break;
		}
	}
}
global.equipment[index] = data;
equipmentIndex = index;

scr_listed_equipment_update_status(equipmentIndex);

//Add Toast
scr_add_new_toast(data[1] + " equipped");