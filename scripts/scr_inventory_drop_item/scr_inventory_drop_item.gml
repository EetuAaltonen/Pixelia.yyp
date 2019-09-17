//scr_item_info_struct()

var data = argument0;
var count = argument1;

if (instance_exists(obj_player)) {
	//Remove From Inventory
	scr_inventory_add_item(data, count);
	
	//Check if count <= 0
	if ((data[ItemData.Count] - count) <= 0) {
		//Unequip if equipped
		scr_listed_item_unequip();	
	}
	
	scr_create_dropped_item(data, abs(count));
	
	//Add Toast
	scr_add_new_toast(data[1] + " dropped");
	
	controller.updateValues = true;
}