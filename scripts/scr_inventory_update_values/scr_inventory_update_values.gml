if (updateValues) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	
	updateValues = false;
	startIndex = 0;
	lastItem = 0;
	
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX + 50, viewY + 76, obj_search_box);
		filter = "";
		pageIndex = 1;
	}
	
	//Filter
	scr_inventory_list_filter();
	
	//Clear item info
	itemInfoText = undefined;
	
	var listSize = ds_list_size(listOfItems);
	
	// Max Page Index
	maxPageIndex = ceil(listSize / itemsPerPage);
	if (pageIndex > maxPageIndex) {
		pageIndex = maxPageIndex;
	}
	
	if (listSize > 0) {
		// Last item
		if (listSize == pageIndex*itemsPerPage) {
			lastItem = listSize;
		} else if (listSize > pageIndex*itemsPerPage) {
			lastItem = pageIndex*itemsPerPage;
		} else {
			lastItem = listSize;
		}
		startIndex = (pageIndex-1)*itemsPerPage;
		
		var xPos = 20;
		var yPos = 110;
		var yMargin = 24;
		var itemList;
		// Create listed items
		if (!instance_exists(obj_listed_item)) {
			itemList = scr_ds_list_range(listOfItems, startIndex, lastItem);
			
			var renderData = scr_inventory_get_render_data(global.hudState);
			scr_inventory_create_list(itemList, itemsPerPage, renderData, xPos, yPos, yMargin);
		} else {
			itemList = scr_ds_list_range(listOfItems, startIndex, lastItem);
			scr_inventory_update_list(itemList);
		}
		
		// Create listed equipments
		if (global.hudAction == HudActions.Equipment) {
			// scr_listed_item_get_equipment_type()
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
			var instance;
			
			for (i = 0; i < listSize; i++) {
				xyPos = xyPosList[i];
				if (!equipmentsExist) {	
					instance_create(viewX+(406+xyPos[0]), viewY+(113+((i+xyPos[1])*margin)-3), obj_listed_equipment);
				}
				instance = (instance_nearest(viewX+(406+xyPos[0]), viewY+(113+((i+xyPos[1])*margin)-3), obj_listed_equipment));
				instance.index = i;
				instance.equipmentIndex = i;
				instance.updateValues = true;
				instance.depth = Depth.ListItem;
			}
		}
		
	} else {
		scr_listed_item_remove();
	}
	
	controlsInfo = scr_inventory_get_controls_info(global.hudState);
}