/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7 
	effectAmount; 8
}*/

var listOfItems = argument0;

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var yPos;
var margin = 19, tempMargin;
var i, j;
var data;
var listSize = ds_list_size(listOfItems);

if (listSize > 0) {
	if (updateValues) {
		updateValues = false;
		yPos = 120;
		//Destroy listed items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}
		
		//Clear item info
		itemInfoText = defaultInfoText;
		
		//Max Page Index
		maxPageIndex = ceil(listSize / itemsPerPage);
		if (pageIndex > maxPageIndex) {
			pageIndex = maxPageIndex;
		}
		
		//Last item
		if (listSize == pageIndex*itemsPerPage) {
			lastItem = listSize;
		} else if (listSize > pageIndex*itemsPerPage) {
			lastItem = pageIndex*itemsPerPage;
		} else {
			lastItem = listSize;
		}
		startIndex = (pageIndex-1)*itemsPerPage;
		
		//Create items
		j = 0;
		for (i = startIndex; i < lastItem; i++) {
			data = ds_list_find_value(listOfItems, i);
			tempMargin = (j*margin);
			instance_create(viewX+30, viewY+yPos+tempMargin, obj_listed_item);
			(instance_nearest(viewX+30, viewY+yPos+tempMargin, obj_listed_item)).data = data;
			names[j] = data[1];
			count[j] = data[3]
			weight[j] = data[5];
			if (global.hudState == "shopSell") {
				price[j++] = (data[6]*global.sellRate);
			} else {
				price[j++] = data[6];
			}
		}
	} else {
		yPos = 120;
		j = 0;
		for (i = startIndex; i < lastItem; i++) {
			tempMargin = (j*margin);
			//Item Icon Background
	        draw_sprite(spr_inv_item_bg, 0,viewX+30, viewY+yPos+tempMargin);        
	        //Item Description Background
	        draw_sprite(spr_inv_item_description_bg, 0,viewX+120, viewY+yPos+tempMargin);
	        //Item Description
			draw_text(viewX+56,viewY+yPos+tempMargin, names[j]);
			//Item Count Background
	        draw_sprite(spr_inv_item_count_bg, 0,viewX+228, viewY+yPos+tempMargin);
			//Item Count
			draw_text(viewX+207,viewY+yPos+tempMargin, string(count[j]) + "  x");
			if (string_pos("inventory", global.hudState)) {
				//Item Weight Background
	            draw_sprite(spr_inv_item_count_bg, 0,viewX+295, viewY+yPos+tempMargin);
				//Item Weight
				draw_text(viewX+274,viewY+yPos+tempMargin, string(weight[j]) + "  Pw");
			} else if (string_pos("shop", global.hudState)) {
				//Item Price Background
	            draw_sprite(spr_inv_item_count_bg, 0,viewX+295, viewY+yPos+tempMargin);
				//Item Price
				draw_text(viewX+274,viewY+yPos+tempMargin, string(price[j]) + "  G");
			}
			j++;
		}
	}	
} else {
	if (updateValues) {
		updateValues = false;
		
		pageIndex = 1;
		maxPageIndex = 1;
		itemInfoText = defaultInfoText;
		
		//Destroy listed items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}
	}
	//If empty
	if (global.hudState == "stashWithdraw") {
		draw_text(viewX+30, viewY+120, "Stash is empty...");
	} else {
		draw_text(viewX+30, viewY+120, "Inventory is empty...");
	}
}

//Draw Info
scr_draw_info();