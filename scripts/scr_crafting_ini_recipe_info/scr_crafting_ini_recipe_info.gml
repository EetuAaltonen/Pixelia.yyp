var recipe = argument0;
var materials = argument1;
if (recipe != "null") {
	var recipeInfo = [spr_aim, "null", "null"];
	
	var product = scr_item_search_data(scr_recipe("product", recipe), "name");
	recipeInfo[0] = product[0];
	recipeInfo[1] = scr_recipe("product", recipe);
	
	var materialCount = ds_list_size(materials);
	var i;
	var material;
	var infoText;
	var ingredients = "";
	for (i = 0; i < materialCount; i++) {
		material = ds_list_find_value(materials, i);
		infoText = "- " + material[1] + " " + string(material[3]) + "x#";
		ingredients += infoText;
	}
	recipeInfo[2] = ingredients;
}
return recipeInfo;