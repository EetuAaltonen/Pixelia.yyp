var spiteIndex = argument0;
var material = "null";
var materials = [
	//Trees
	[spr_oak_tree, "Oak Log"],
	[spr_spruce_tree, "Spruce Log"],
	//Ores
	[spr_source_iron_ore, "Spruce Log"],
]

var arraySize = array_length_1d(materials);
var i;
var tempMaterial;
for (i = 0; i < arraySize; i++) {
	tempMaterial = materials[i];
	if (tempMaterial[0] == spiteIndex) {
		material = scr_search_item_data(tempMaterial[1], "name");
		return material;
	}
}
show_message("Material for " + sprite_get_name(spriteIndex) + " not found!");
return;