if (updateValues) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	
	updateValues = false;
	startIndex = 0;
	lastItem = 0;
	
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX+35, viewY+76, obj_search_box);
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
		var yPos, xPos;
		var margin = 19, tempMargin;
		var i;
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
		
		//Create / update listed items
		var listedItemsExist = instance_exists(obj_listed_item);
		xPos = 17;
		yPos = 105;
		var tempIndex = startIndex;
		for (i = 0; i < itemsPerPage; i++) {
			data = "null";
			if (tempIndex < lastItem) {
				data = ds_list_find_value(listOfItems, tempIndex++);
			}
			tempMargin = (i*margin);
			if (!listedItemsExist) {
				instance_create(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item);
			}
			(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).index = i;
			(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).depth = depth-1;
			(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).data = data;
			(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).updateValues = true;
		}
		
		//Create / update listed equipments
		if (global.hudAction == HudActions.Equipment) {
			//scr_listed_item_get_equipment_type()
			var equipmentsExist = instance_exists(obj_listed_equipment);
			var i;
			var margin = 25;
			var verMargin = 25;
			var xyPosList = [
				[45, 0],
				[45-verMargin, -1],
				[45, -1],
				[45-verMargin, -2],
				[45+verMargin, -3],
				[45-verMargin, -3],
				[45+verMargin, -4],
				[45, -5],
				[45, -5]
			];
			var xyPos;
			var listSize = array_length_1d(xyPosList);
			
			for (i = 0; i < listSize; i++) {
				xyPos = xyPosList[i];
				if (!equipmentsExist) {	
					instance_create(viewX+(406+xyPos[0]), viewY+(113+((i+xyPos[1])*margin)-3), obj_listed_equipment);
				}
				(instance_nearest(viewX+(406+xyPos[0]), viewY+(113+((i+xyPos[1])*margin)-3), obj_listed_equipment)).index = i;
				(instance_nearest(viewX+(406+xyPos[0]), viewY+(113+((i+xyPos[1])*margin)-3), obj_listed_equipment)).equipmentIndex = i;
				(instance_nearest(viewX+(406+xyPos[0]), viewY+(113+((i+xyPos[1])*margin)-3), obj_listed_equipment)).updateValues = true;
				(instance_nearest(viewX+(406+xyPos[0]), viewY+(113+((i+xyPos[1])*margin)-3), obj_listed_equipment)).depth = depth-1;
			}
		}
		
	} else {
		scr_listed_item_remove();
	}
}