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

/*Recipe {
	material1; 0
	material2; 1
	material3; 2
	product; 3
	count; 4
}*/

var i, j;
var item = "null";
var correct = 0;
var recipe, product;
var checkValue = (items[0] + items[1] + items[2]);
var recipeCorrect = false;
var recipes = scr_crafting_recipes(global.hudState);

var arraySize = array_length_1d(recipes);

for (i = 0; i < arraySize; i++) {
	recipe = recipes[i];
	if (checkValue == (recipe[0] + recipe[1] + recipe[2]) ||
		checkValue == (recipe[0] + recipe[2] + recipe[1]) ||
		checkValue == (recipe[1] + recipe[0] + recipe[2]) ||
		checkValue == (recipe[1] + recipe[2] + recipe[0]) ||
		checkValue == (recipe[2] + recipe[0] + recipe[1]) ||
		checkValue == (recipe[2] + recipe[1] + recipe[0])) {
		recipeCorrect = true;	
	}
	
	if (recipeCorrect) {
		break;	
	}
}

if (recipeCorrect) {
	product = scr_item_search_data(recipe[3], "name");
	product[3] = recipe[4];
	return product;
}

return item;