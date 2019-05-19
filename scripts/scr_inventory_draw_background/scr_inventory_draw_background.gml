if (scr_hud_state_some_of_inventory() ||
	scr_hud_state_some_of_info_page() ||
	scr_hud_state_some_of_crafting()) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	
	//Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Draw Info Background
	if (scr_hud_state_some_of_crafting() || scr_hud_state_some_of_inventory()) {
		var listSize = ds_list_size(listOfItems);
		if (listSize > 0) {
			var yPos = 96;
			var margin = 19, tempMargin;
			var i;
			var j = 0;
			var data;
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
					draw_sprite(spr_inv_item_price_bg, 0, viewX+219, viewY+yPos+tempMargin);
				}
				j++;
			}
		}
		
		//Page Index background
		draw_sprite(spr_inv_button_small, 0, viewX+4, viewY+76);
		//Total And Weight Background
		draw_sprite(spr_inv_item_long_bg, 0, viewX+180, viewY+76);
		if (scr_hud_state_not_crafting()) {
			//Item info background
			draw_sprite(spr_inv_item_info_bg, 0, viewX+284, viewY+96);
			
			//Your Gold
			draw_sprite(spr_inv_button_medium, 0, viewX+436, viewY+56);
			draw_sprite_ext(spr_money_icon, image_index, viewX+425, 
		                viewY+65, 1, 1,
		                image_angle, c_white, image_alpha);
						
			//Merchant's Money
			if (string_pos("shop", global.hudState)) {
				draw_sprite(spr_inv_button_medium, 0, viewX+436, viewY+76);
				draw_sprite_ext(spr_money_icon_m, image_index, viewX+425, 
			                viewY+85, 1, 1, 
			                image_angle, c_white, image_alpha);	
			}
			//Menu Controls
			scr_controls_get_bg();
		}
		
		//Equipped items
		if (global.hudState == "inventoryEquipments") {
			//Background
			draw_sprite(spr_inv_equip_info_bg, 0, viewX+406, viewY+96);
		}
	}
}