/*var recipe = false;
var recipeName = argument0;
var ingredients = argument1;*/

var recipes = argument0;
var recipeName = argument1;
var ingredients = argument2;
var result = false;

recipes = scr_inventory_item_info();
/*switch(recipes) {
	//case "forge": recipes = scr_forge_recipes();
	case "alchemy": recipes = scr_alchemy_recipes();
	//case "workbench": recipes = scr_workbench_recipes();
}*/

//var recipe = scr_search_recipe();
var arrayLength = array_length_1d(recipes);
for (var i=0; i < arrayLength; i++) {
	var recipe = recipes[i];
	//Search name by ingredients
	if (recipeName == false) {
		var ingrs = recipe[5];
		var similarities = 0;
		for (var a=0; a < 3; a++) {
			for (var b=0; b < 3; b++) {
				if (ingrs[a] == ingredients[b]) {
					similarities += 1;
				}
			}
		}
		if (similarities == 3) {
			result = recipe[0];
			break;
		}
	//Search ingredients by name
	} else if (ingredients == false) {
		if (recipe[0] == recipeName) {
			result = recipe[5];
			break;
		}
	}
}
return result;