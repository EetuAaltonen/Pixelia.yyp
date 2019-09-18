// scr_enum_loot_tables()
// scr_enum_loot_drop()
// scr_items_data()
var category = argument0;
switch (category) {
	case LootTable.CommonFishes: {
		return [
			[spr_raw_salmon, 1, (1/10)],
			[spr_raw_tuna, 1, 1]
		];
	}break;
	case LootTable.CommonMaterials: {
		return [
			[spr_coal, irandom(5), (3/4)],
			[spr_iron_ore, irandom(4), (1/2)],
			[spr_iron_ingot, irandom(2), (1/5)],
			[spr_oak_log, irandom(4), 1]
		];
	}break;
	case LootTable.CommonWeapons: {
		return [
			[]
		];
	}break;
}