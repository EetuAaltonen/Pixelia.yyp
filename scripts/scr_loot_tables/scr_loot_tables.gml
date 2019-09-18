//scr_enum_loot_tables()
//scr_enum_loot_drop()
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
			[]
		];
	}break;
	case LootTable.CommonWeapons: {
		return [
			[]
		];
	}break;
}