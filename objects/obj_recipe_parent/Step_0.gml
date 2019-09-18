///Collect
if (distance_to_object(obj_use) == 0 && 
    scr_highlighted())
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
	switch (recipeType) {
		case "forge": {
			ds_list_add(global.knownForgeRecipes, [recipeName, ingredients]);
		};break;
		case "alchemy": {
			ds_list_add(global.knownAlchemyRecipes, [recipeName, ingredients]);
		};break;
		case "workbench": {
			ds_list_add(global.knownWorkbenchRecipes, [recipeName, ingredients]);
		};break;
	}
	obj_player.highlight = false;
	instance_destroy();
}

///Gravity
scr_custom_gravity();