// TODO: Drop more than 1 item from inventory
/*var spriteName = sprite_get_name(argument0);
var randomX, randomY, i;
var instance;
for (i = 1; i <= droppedCount; i++) {
	scr_crete_droped_item();
}
//Save to inventory
scr_save_to_inventory(spriteName, (droppedCount*(-1)));
//Refresh inventory list
obj_inventory_controller.pageUpdate = true;