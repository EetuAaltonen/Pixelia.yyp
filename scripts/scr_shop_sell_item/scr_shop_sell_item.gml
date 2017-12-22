//Remove From Inventory
scr_add_to_inventory(data, -1);
//Get Payment
global.coins += (data[6]*global.sellRate);
//Add To Shop
scr_add_to_shop(data, 1);