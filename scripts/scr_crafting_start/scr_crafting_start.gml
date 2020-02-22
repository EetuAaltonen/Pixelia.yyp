/// @description Craft item and remove materials from inventory
/// @param data - Item to craft
/// @param recipeMaterials - List of materials to remove from inventory
/// @return Void

var data = argument0;
var recipeMaterials = argument1;

var count = data[ItemData.Count];
scr_inventory_add_item(data, count);
scr_add_new_toast(string(count) + "x " + data[ItemData.Name] + " crafted");

var materialCount = ds_list_size(recipeMaterials);
var i, material, count, tempItem;
var newMaterialsFound = true;
for (i = 0; i < materialCount; i++) {
	material = ds_list_find_value(recipeMaterials, i);
	var count = material[ItemData.Count];
	scr_inventory_add_item(material, -count);
	
	// Check if enough materials for a new item
	tempItem = scr_inventory_search_item(material[ItemData.Name]);
	if (!is_undefined(tempItem)) {
		if (tempItem[ItemData.Count] < material[ItemData.Count]) {
			newMaterialsFound = false;	
		}
	} else {
		newMaterialsFound = false;
	}
}

// Clear slots if not enough materials for a new item
if (!newMaterialsFound) {
	var slotCount = instance_number(obj_crafting_slot);
	var slot;
	for (i = 0; i < slotCount; i++) {
		slot = instance_find(obj_crafting_slot, i);
		if (slot.index != -1) {
			slot.data = undefined;
		}
	}
}