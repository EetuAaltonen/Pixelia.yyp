/*Recipe {
	material1; 0
	material2; 1
	material3; 2
	product; 3
	count; 4
}*/

var category = argument0;
var recipes = [];
switch (category) {
	case "forge": {
		recipes = [
			["Oak Log", "", "", "Coal", 2],
			["Iron Ore", "", "", "Iron Ingot", 1],
			["Iron Ore", "Coal", "", "Steel Ingot", 1]
		];
	}break;
	case "alchemy": {
		recipes = [];
	}break;
	case "workbench": {
		recipes = [
			["Oak Log", "Iron Ingot", "", "Knife", 1],
			["Oak Log", "Steel Ingot", "", "Saw", 1],
			["Oak Log", "Knife", "", "Bow Model", 1],
			["Bow Model", "String", "", "Bow", 1],
		];
	}break;
	case "anvil": {
		recipes = [
			["Oak Log", "Iron Ingot", "", "Knife", 1],
			["Oak Log", "Steel Ingot", "", "Saw", 1]
		];
	}break;
	case "spinningWheel": {
		recipes = [
			["Wool", "", "", "String", 2]
		];
	}break;
}
return recipes;