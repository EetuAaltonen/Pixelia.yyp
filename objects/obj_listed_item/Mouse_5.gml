//scr_listed_item_right_mouse_pressed();
if (!obj_inventory_controller.updateValues) {
	switch (global.hudState) {
		case "inventoryBackpack": {
			if (instance_exists(obj_player)) {
				var x_random, y_random, i;
				x_random = irandom_range(1, 2);
				x_random = round(x_random);
				if (x_random == 1) {
				    x_random = irandom_range(10, 20);
				} else if (x_random == 2) {
				    x_random = irandom_range(-20, -10);
				} else {
				    show_message(string("Error: " + x_random + " was wrong value!"));
				}
				y_random = -5//irandom_range(-5, -10);

				instance_create(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item);
				(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).data = data;
			
				scr_inventory_add_item(data, -1);
			
				obj_inventory_controller.updateValues = true;
			}
		}break;
		case "shopBuy": {
			scr_shop_buy_item();
		}break;
		case "shopSell": {
			scr_shop_sell_item();
		}break;
		case "shopRepair": {
			//scr_shop_repair_item();
		}break;
		case "shopBuyBack": {
			//scr_shop_buy_back_item();
		}break;
		case "stashWithdraw": {
			scr_stash_add_item(data, -1);
		}break;
		case "stashDeposit": {
			scr_stash_add_item(data, 1);
		}break;
	}
}