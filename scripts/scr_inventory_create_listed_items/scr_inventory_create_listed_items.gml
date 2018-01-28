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
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
	
var yPos;
var margin = 19, tempMargin;
var i, j;
var data;
var listSize = ds_list_size(listOfItems);
	
if (listSize > 0) {
	/*//Clear item info
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
	startIndex = (pageIndex-1)*itemsPerPage;*/
	/*//Clear item info
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
	
	j = 0;
	for (i = startIndex; i < lastItem; i++) {
		data = ds_list_find_value(listOfItems, i);
		names[j] = data[1];
		count[j] = data[3]
		weight[j] = data[5];
		if (global.hudState == "shopSell") {
			price[j] = round(data[6]*global.sellRate);
			if (price[j] < 1) {
				price[j] = 1;	
			}
		} else {
			price[j] = data[6];
		}
		j++;
	}*/
	
	//Destroy listed items
	/*if (instance_exists(obj_listed_item)) {
		yPos = 120;
		
		//Create items
		for (i = startIndex; i < lastItem; i++) {
			data = ds_list_find_value(listOfItems, i);
			tempMargin = (j*margin);
			instance_create(scr_gui(30, "x"), scr_gui(yPos+tempMargin, "y"), obj_listed_item);
			(instance_nearest(scr_gui(30, "x"), scr_gui(yPos+tempMargin, "y"), obj_listed_item)).index = i;
			(instance_nearest(scr_gui(30, "x"), scr_gui(yPos+tempMargin, "y"), obj_listed_item)).data = data;
			(instance_nearest(scr_gui(30, "x"), scr_gui(yPos+tempMargin, "y"), obj_listed_item)).depth = depth-1;
		}
	} else {
		var itemCount = instance_number(obj_listed_item);
		var item;
		//Create items
		for (i = startIndex; i < lastItem; i++) {
			data = ds_list_find_value(listOfItems, i);
			for (j = 0; j < itemCount; j++) {
				item = instance_find(obj_listed_item, j);
				if (item.index == j) {
					item.name = "";
					item.data = data;
					break;	
				}
			}
		}
	}*/
} else {
	if (updateValues) {
		/*maxPageIndex = 1;
		itemInfoText = defaultInfoText;
		
		//Destroy listed items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}*/
	}
	/*if (updateValues) {
		updateValues = false;
		
		pageIndex = 1;
		maxPageIndex = 1;
		itemInfoText = defaultInfoText;
		
		//Destroy listed items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}
	}*/
	
}