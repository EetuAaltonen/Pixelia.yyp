//Remove From Inventory
scr_inventory_add_item(data, -1);
//Get Payment
global.coins += (data[6]*global.sellRate);
//Add To Shop
scr_add_to_shop(data, 1);