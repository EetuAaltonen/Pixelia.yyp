if (global.hudState != "null")
{
    if (global.hudState == "shop")
    {
        scr_listed_item_left_mouse_pressed_shop();
    }
    else
    {
		if (instance_exists(obj_recipe_book)) {
			if (!obj_recipe_book.showRecipeBook) {
				scr_listed_item_left_mouse_pressed_crafting();
			}
		} else {
			scr_listed_item_left_mouse_pressed_crafting();
		}
    }
}
