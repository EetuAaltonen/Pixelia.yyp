var count;
var i;
var slot;
var item;

var recipeBookOpen = false;
if (instance_exists(obj_recipe_book)) {
	if (obj_recipe_book.showRecipeBook) {
		recipeBookOpen = true;
	}
}
if (!recipeBookOpen) {
	if (instance_exists(obj_crafting_slot)) {
		//if (!selected) {	
			count = instance_number(obj_crafting_slot);
			for (i = 0; i < count; i++) {
				slot = instance_find(obj_crafting_slot, i);
				if (slot.item == "null") {
					//data[1] == name
					slot.item = data;
					slot.spriteIndex = data[0];
					//selected = true;
					obj_crafting_product.checkRecipe = true;
					break;
				}
			}
		/*} else {
			count = instance_number(obj_crafting_slot);
			for (i = 0; i < count; i++) {
				slot = instance_find(obj_crafting_slot, i);
				if (slot.item != "null") {
					if (scr_item_compare_items(slot.item, data)) {
						//data[1] == name
						slot.item = "null";
						slot.spriteIndex = "null";
						//selected = false;
						obj_crafting_product.checkRecipe = true;
						break;
					}
				}
			}
		}*/
	}
}

/*if (instance_exists(obj_crafting_slot_1) &&
    instance_exists(obj_crafting_slot_2) &&
    instance_exists(obj_crafting_slot_3) &&
    instance_exists(obj_crafting_slot_4)) {
    var slot1 = obj_crafting_slot_1;
    var slot2 = obj_crafting_slot_2;
    var slot3 = obj_crafting_slot_3;
    var slot4 = obj_crafting_slot_4;
    var spriteIndex = sprite_get_name(sprite_index);
    //scr_forg_mouse_released();
    scr_inventory_item_info();
    if (selected == false)
    {
        if (slot1.spriteIndex == false)
        {
            /*prev_x = x;
            prev_y = y;
            x = slot1.x;
            y = slot1.y;*//*
            slot1.spriteIndex = spriteIndex;
            selected = true;
            obj_crafted_item.checkRecipe = true;
        }
        else if (slot2.spriteIndex == false)
        {
            /*prev_x = x;
            prev_y = y;
            x = slot2.x;
            y = slot2.y;*//*
            slot2.spriteIndex = spriteIndex;
            selected = true;
            obj_crafted_item.checkRecipe = true;
        }
        else if (slot3.spriteIndex == false)
        {
            /*prev_x = x;
            prev_y = y;
            x = slot3.x;
            y = slot3.y;*//*
            slot3.spriteIndex = spriteIndex;
            selected = true;
            obj_crafted_item.checkRecipe = true;
        }
    }
    else if (selected == true)
    {
        if (slot1.spriteIndex == spriteIndex)
        {
            /*x = prev_x;
            y = prev_y;*//*
            slot1.spriteIndex = false;
            selected = false;
            obj_crafted_item.checkRecipe = true;
        }
        else if (slot2.spriteIndex == spriteIndex)
        {
            /*x = prev_x;
            y = prev_y;*//*
            slot2.spriteIndex = false;
            selected = false;
            obj_crafted_item.checkRecipe = true;
        }
        else if (slot3.spriteIndex == spriteIndex)
        {
            /*x = prev_x;
            y = prev_y;*//*
            slot3.spriteIndex = false;
            selected = false;
            obj_crafted_item.checkRecipe = true;
        }
    }
}
