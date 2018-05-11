/*Recipe {
	material(s); n
	product; n+1
	output count; n+2
	required tool; n+3
	required skill; n+4 ["skill name", level]
}*/

//Returns An Info By Index
var indexName = argument0;
var recipe = argument1;
if (recipe != "null") {
	if (is_array(recipe)) {
		var recipeSize = array_length_1d(recipe);
		var infoIndices = [
			"product",
			"count",
			"reqTool",
			"reqSkill"
		]
		var indexCount = array_length_1d(infoIndices);
		if (indexName == "lastMatIndex") {
			return (recipeSize-indexCount);
		} else {
			var i;
			for (i = 0; i < indexCount; i++) {
				if (indexName == infoIndices[i]) {
					return recipe[recipeSize-(indexCount-i)];
				}
			}
		}
		show_message("There Is A Typo In Code(scr_recipe.gml: argument: 'indexName')");
	}
}
