// scr_item_info_struct()

var item = argument0;
var count = argument1;

if (count != 0) {
	if (string_pos("potion", item[ItemData.Type])) {
		// Add buff
		scr_plr_effects_add(item[ItemData.Effect], item[ItemData.EffectAmount], item[ItemData.EffectDuration]);
		
		// Remove From Inventory
		scr_inventory_add_item(item, count*(-1));

		obj_inventory_controller.updateValues = true;
	}
}