var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

scr_set_global_hudstate("inventoryBackpack");
updateValues = true;
pageIndex = 1;
filter = "null";

//Create Buttons
var buttons = [
	["inventoryBackpack", "Backpack", "medium"],
	["inventoryEquipments", "Equipments", "medium"],
	["abilities", "Abilities", "small"],
	["skills", "Skills", "small"],
	["stats", "Stats", "small"],
	["quests", "Quests", "small"],
	["save&exit", "Save And Exit", "medium"],
	["close", "Close", "small"]
];
scr_inventory_create_buttons(buttons, 4, 40);