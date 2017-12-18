/*Item {
	sprite; 0
	name; 1
	type; 2
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
		
		//Last item
		if (listSize == currentPage*itemsPerPage) {
			lastItem = listSize;
		} else if (listSize > currentPage*itemsPerPage) {
			lastItem = currentPage*itemsPerPage;
		} else {
			lastItem = listSize % itemsPerPage;
		}
		startIndex = (currentPage-1)*itemsPerPage;
		
		//Max Page Index
		maxPageIndex = ceil(listSize / itemsPerPage);
		
		//Create items
		j = 0;
		for (i = startIndex; j < lastItem; i++) {
			data = ds_list_find_value(listOfItems, i);
			tempMargin = (j*margin);
			instance_create(viewX+30, viewY+yPos+tempMargin, obj_listed_item);
			(instance_nearest(viewX+30, viewY+yPos+tempMargin, obj_listed_item)).data = data;
			names[j] = data[1];
			count[j] = data[3]
			weight[j++] = data[5];
		}
		
		show_message("Values Updated!");
	} else {
		yPos = 120;
		j = 0;
		for (i = startIndex; j < lastItem; i++) {
			data = ds_list_find_value(global.inventory, i);
			tempMargin = (i*margin);
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
			//Item Weight Background
            draw_sprite(spr_inv_item_count_bg, 0,viewX+295, viewY+yPos+tempMargin);
			//Item Weight
			draw_text(viewX+274,viewY+yPos+tempMargin, string(weight[j++]) + "  Pw");
		}
		//Draw Info
		scr_draw_info();
	}	
} else {
	if (updateValues) {
		updateValues = false;
		//Destroy listed items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}
	}
	//If empty
	draw_text(viewX+30, viewY+120, "Inventory is empty...");
}