if (string_pos("inventory", global.hudState) != 0 ||
	string_pos("shop", global.hudState) != 0 ||
	string_pos("stash", global.hudState) != 0 ||
	scr_hud_state_some_of_crafting()) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	
	//Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Draw Info Background
	if (!updateValues) {
		var yPos;
		var margin = 19, tempMargin;
		var i, j;
		var data;
		var listSize = ds_list_size(listOfItems);
		
		if (listSize > 0) {
			yPos = 90;
			j = 0;
			for (i = startIndex; i < lastItem; i++) {
				tempMargin = (j*margin);
				//Item Icon Background
				draw_sprite(spr_inv_item_bg, 0, viewX+4, viewY+yPos+tempMargin);
				//Item Description Background
				draw_sprite(spr_inv_item_description_bg, 0, viewX+35, viewY+yPos+tempMargin);
				//Item Count Background
				draw_sprite(spr_inv_item_count_bg, 0, viewX+180, viewY+yPos+tempMargin);
				if (!scr_hud_state_some_of_crafting()) {
					//Item Weight/Price Background
					draw_sprite(spr_inv_item_count_bg, 0, viewX+245, viewY+yPos+tempMargin);
				}
				j++;
			}
		}  else {
			//If empty
			if (global.hudState == "stashWithdraw") {
				draw_text(viewX+30, viewY+120, "Stash is empty...");
			} else {
				draw_text(viewX+30, viewY+120, "Inventory is empty...");
			}
		}
	}
	//Page Index background
	draw_sprite(spr_inv_item_count_bg, 0, viewX+4, viewY+65);
	//Your Gold/Total And Weight Background
	draw_sprite(spr_inv_item_description_bg, 0, viewX+180, viewY+65);
	
	if (scr_hud_state_not_crafting()) {
		//Item info background
		draw_sprite(spr_inv_item_info_bg, 0, viewX+334, viewY+65);
	}

}