if (updateValues) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	
	updateValues = false;
	startIndex = 0;
	lastItem = 0;
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	//Filter
	scr_inventory_list_filter();
	
	//Clear item info
	itemInfoText = defaultInfoText;
	
	var listSize = ds_list_size(listOfItems);
	
	//Max Page Index
	maxPageIndex = ceil(listSize / itemsPerPage);
	if (pageIndex > maxPageIndex) {
		pageIndex = maxPageIndex;
	}
	
	if (listSize > 0) {
		var yPos;
		var margin = 19, tempMargin;
		var i, j;
		var data;
		
		//Last item
		if (listSize == pageIndex*itemsPerPage) {
			lastItem = listSize;
		} else if (listSize > pageIndex*itemsPerPage) {
			lastItem = pageIndex*itemsPerPage;
		} else {
			lastItem = listSize;
		}
		startIndex = (pageIndex-1)*itemsPerPage;
		
		if (!instance_exists(obj_listed_item)) {
			//Listed Items
			//scr_inventory_create_listed_items();
			
			xPost = 17;
			yPos = 99;
			//Create items
			for (i = 0; i < itemsPerPage; i++) {
				data = ds_list_find_value(listOfItems, i);
				tempMargin = (i*margin);
				instance_create(viewX+xPost, viewY+yPos+tempMargin, obj_listed_item);
				(instance_nearest(viewX+xPost, viewY+yPos+tempMargin, obj_listed_item)).index = i;
				(instance_nearest(viewX+xPost, viewY+yPos+tempMargin, obj_listed_item)).depth = depth-1;
			}
		}
		var itemCount = instance_number(obj_listed_item);
		var item;
		var tempIndex = startIndex;
		//Create items
		for (i = 0; i < itemCount; i++) {
			data = "null";
			if (tempIndex < lastItem) {
				data = ds_list_find_value(listOfItems, tempIndex++);
			}
			for (j = i; j < itemCount; j++) {
				item = instance_find(obj_listed_item, j);
				if (item.index == j) {
					item.name = "";
					item.data = data;
					if (data != "null") {
						names[j] = data[1];
						count[j] = data[3];
						weight[j] = data[5];
						if (global.hudState == "shopSell") {
							price[j] = round(data[6]*global.sellRate);
							if (price[j] < 1) {
								price[j] = 1;	
							}
						} else {
							price[j] = data[6];
						}
					} else {
						names[j] = "";
						count[j] = "";
						weight[j] = "";
						price[j] = "";
					}
					break;
				}
			}
		}
	} else {
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();	
		}
	}
}