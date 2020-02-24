showRecipeBook = !showRecipeBook;

if (showRecipeBook) {
	
} else {
	if (instance_exists(obj_clickable_recipe)) {
		with (obj_clickable_recipe) instance_destroy();
	}
}
// TODO: Fix recipe book
//var viewX = camera_get_view_x(view_camera[0]);
//var viewY = camera_get_view_y(view_camera[0]);
//var viewWidth = camera_get_view_width(view_camera[0]);
//var viewHeight = camera_get_view_height(view_camera[0]);

//if (!showRecipeBook) {
//	showRecipeBook = true;
//	var recipes = scr_crafting_recipes(global.hudState);
//	var recipeCount = array_length_1d(recipes);
//	var i;
//	var margin = 20;
//	var xPos = 90;
//	var yPos = 95;
//	var recipesPerPage = 8;
//	var recipe;
//	for (i = 0; i < recipesPerPage; i++) {
//		instance_create(viewX+xPos, viewY+(viewHeight/2)-80+(i*margin), obj_clickable_recipe);
//		if (i < recipeCount) {
//			recipe = recipes[i];
//			(instance_nearest(viewX+xPos, viewY+(viewHeight/2)-80+(i*margin), obj_clickable_recipe)).recipe = recipe;
//			(instance_nearest(viewX+xPos, viewY+(viewHeight/2)-80+(i*margin), obj_clickable_recipe)).depth = depth-1;	
//		}
//	}
//	/*instance_create(viewX+100, viewY+(viewHeight-75), obj_pointing_arrow);
//	(instance_nearest(viewX+100, viewY+(viewHeight-75), obj_pointing_arrow)).pointing = "left";
	
//	instance_create(viewX+(viewWidth-100), viewY+(viewHeight-75), obj_pointing_arrow);
//	(instance_nearest(viewX+(viewWidth-100), viewY+(viewHeight-75), obj_pointing_arrow)).pointing = "right";*/
	
//	instance_create(viewX+(viewWidth-90), viewY+75, obj_recipe_book_cross);
	
//	/*recipeCount = 0;
//	var recipeList;
//	switch (global.hudState) {
//		case "forge": {
//			recipeList = global.knownForgeRecipes;
//		}break;
//		case "alchemy": {
//			recipeList = global.knownAlchemyRecipes;
//		}break;
//		case "workbench": {
//			recipeList = global.knownWorkbenchRecipes;
//		}break;
//	}
//	var listSize = ds_list_size(recipeList);
//	for (var i=0; i < listSize; i++) {
//		var recipe = ds_list_find_value(recipeList, i);
//		knownRecipes[i] = recipe;
//	}
//	recipeCount = i;
	
//	if (recipeCount < recipesPerPage) {
//		maxPage = 1;
//	} else {
//		maxPage = round (recipeCount / recipesPerPage);
//	}*/
//	createOnce = true;
//} else {
//	showRecipeBook = false;
//}