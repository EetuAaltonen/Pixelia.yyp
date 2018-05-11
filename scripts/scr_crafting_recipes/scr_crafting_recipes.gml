/*Recipe {
	material(s); n
	product; n+1
	output count; n+2
	required tool; n+3
	required skill; n+4 ["skill name", level]
}*/

var category = argument0;
var recipes = [];
switch (category) {
	case "forge": {
		recipes = [
			["Oak Log", "Coal", 2, "", ""],
			["Iron Ore", "Iron Ingot", 1, "", ""],
			["Iron Ore", "Coal", "Steel Ingot", 1, "", ""]
		];
	}break;
	case "furnace": {
		recipes = [
			["Ring Mould", "Gold Ore", "Gold Ring", 1, "Crucible With Handle", ""],
			["Amulet Mould", "Gold Ore", "Gold Ore", "Gold Amulet", 1, "Crucible With Handle", ""]
		];
	}break;
	case "alchemy": {
		recipes = [];
	}break;
	case "workbench": {
		recipes = [
			["Oak Log", "Iron Ingot", "Knife", 1, "", ""],
			["Oak Log", "Steel Ingot", "Saw", 1, "", ""],
			["Oak Log", "Knife", "Bow Model", 1, "", ""],
			["Bow Model", "String", "Bow", 1, "", ""],
			["Iron Ingot", "Wooden Stick", "Feather", "Arrow", 10, "", ""],
			["Oak Log", "Saw", "Knife", "Wooden Stick", 10, "", ""]
		];
	}break;
	case "anvil": {
		recipes = [
			["Oak Log", "Iron Ingot", "Knife", 1, "", ""],
			["Oak Log", "Steel Ingot", "Saw", 1, "", ""]
		];
	}break;
	case "cooking": {
		recipes = [
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""]
		];
	}break;
	case "spinningWheel": {
		recipes = [
			["Wool", "String", 2, "", ""]
		];
	}break;
}
return recipes;