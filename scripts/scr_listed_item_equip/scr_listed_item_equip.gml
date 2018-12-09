var index = argument0;
var listedItem;
var listedItemCount = instance_number(obj_listed_item);
var i;
if (global.equipments[index] != "") {
	for (i = 0; i < listedItemCount; i++) {
		listedItem = instance_find(obj_listed_item, i);
		if (scr_item_compare_items(listedItem.data, global.equipments[index], "full")) {
			listedItem.equipmentIndex = -1;
		}
	}
}
global.equipments[index] = data;
equipmentIndex = index;
//Add Toast
scr_add_new_toast(data[1] + " equipped");
				
obj_inventory_controller.buffsUpdate = true;