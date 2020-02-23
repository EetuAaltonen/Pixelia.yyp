/// @description Adds item into inventory
/// @param item - Item to be added
/// @param count - Count of items
/// @return Void

var item = argument0;
var count = argument1;

if (count != 0) {
	if (scr_inventory_check_capacity(item[ItemData.Weight]*count,true) || count < 0) {
		//Add To Capacity
		global.totalInventoryCapacity += (count*item[ItemData.Weight]);
		
		scr_ds_list_add_item(item, count, global.inventory);
	}
}