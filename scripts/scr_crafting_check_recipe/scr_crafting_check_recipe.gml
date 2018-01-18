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
	//show_message(recipe[3]);
	product = scr_item_search_data(recipe[3], "name");
	product[3] = recipe[4];
	return product;
}

return item;

/*id1 = argument0;
id2 = argument1;
id3 = argument2;
var slot4 = obj_crafting_slot_4;
var recipeExists = false;
var key = "";
var info;
var spriteIndex;
for (i = 0; i >= 0; i++) {
    switch(i) {
        case 0: {key = string(id1) + "," + string(id2) + "," + string(id3)} break;
        case 1: {key = string(id1) + "," + string(id3) + "," + string(id2)} break;
        case 2: {key = string(id2) + "," + string(id1) + "," + string(id3)} break;
        case 3: {key = string(id2) + "," + string(id3) + "," + string(id1)} break;
        case 4: {key = string(id3) + "," + string(id1) + "," + string(id2)} break;
        case 5: {key = string(id3) + "," + string(id2) + "," + string(id1)} break;
    }
    switch(global.hudState) {
        case "forge": {spriteIndex = scr_forge_recipes(key);} break;
        //case "alchemy": {spriteIndex = scr_alchemy_recipes(key);} break;
        case "workbench": {spriteIndex = scr_workbench_recipes(key);} break;
    }
    if (spriteIndex) {
        sprite_index = spriteIndex;
        sprite_index_ = sprite_get_name(sprite_index);
        visible = true;
        slot4.spriteIndex = sprite_index_;
        recipeExists = true;
        break;
    };
    if (i == 5) {
        break;
    }
}
if (!recipeExists) {
    spriteIndex = false;
    visible = false;
    slot4.spriteIndex = false;
}
checkRecipe = false;