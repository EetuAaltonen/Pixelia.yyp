//scr_inventory_check_capacity(argument0)
var spriteName = argument0;
var index = "null";
//Search item
var listSize = ds_list_size(global.inventory);
for (var i = 0; i < listSize; i++) {
    value = ds_list_find_value(global.inventory, i);
    if (string(ds_list_find_value(value, 0)) == spriteName) {
        index = i;
		break;
    }
}

return index;