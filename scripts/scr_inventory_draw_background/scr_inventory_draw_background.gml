if (scr_hud_state_some_of_inventory() ||
	scr_hud_state_some_of_info_page() ||
	scr_hud_state_some_of_crafting()) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	
	//Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Draw Info Background
	if (scr_hud_state_some_of_crafting() || scr_hud_state_some_of_inventory()) {
		if (!updateValues) {
			var yPos = 92;
			var margin = 19, tempMargin;
			var i, j;
			var data;
			var listSize = ds_list_size(listOfItems);
		
			if (listSize > 0) {
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
					draw_text(viewX+30, viewY+132, "Stash is empty...");
				} else {
					draw_text(viewX+30, viewY+132, "Inventory is empty...");
				}
			}
		}
		//Page Index background
		draw_sprite(spr_inv_button_small, 0, viewX+4, viewY+72);
		//Total And Weight Background
		draw_sprite(spr_inv_item_long_bg, 0, viewX+180, viewY+72);
		if (scr_hud_state_not_crafting()) {
			//Item info background
			draw_sprite(spr_inv_item_info_bg, 0, viewX+320, viewY+92);
			draw_sprite(spr_inv_item_info_bg, 0, viewX+320, viewY+92);
			
			//Your Gold
			draw_sprite(spr_inv_button_medium, 0, viewX+436, viewY+52);
			draw_sprite_ext(spr_money_icon, image_index, viewX+425, 
		                viewY+61, 1, 1, 
		                image_angle, c_white, image_alpha);
						
			//Merchant's Money
			if (string_pos("shop", global.hudState)) {
				draw_sprite(spr_inv_button_medium, 0, viewX+436, viewY+72);
				draw_sprite_ext(spr_money_icon_m, image_index, viewX+425, 
			                viewY+81, 1, 1, 
			                image_angle, c_white, image_alpha);	
			}
		}
	}
}