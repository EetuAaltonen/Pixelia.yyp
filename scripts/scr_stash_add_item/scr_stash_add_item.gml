//scr_item_info_struct()

var item = argument0;
var count = argument1;
var listSize = ds_list_size(global.stash);
var alreadyExists = false;
var data;
var i;

if (count != 0) {
	if (scr_stash_check_capacity(item[5]*count) && scr_inventory_check_capacity(item[5]*(count*-1),true)) {
				
		//Add To Capacity
		global.totalStashCapacity += (count*item[5]);
	
		//Add To Stash
		scr_ds_list_add_item(item, count, global.stash);
		
		//Remove From Inventory
		scr_inventory_add_item(item, count*(-1));
		
		obj_inventory_controller.updateValues = true;
	}
}