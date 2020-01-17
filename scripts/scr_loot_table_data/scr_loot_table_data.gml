var category = argument0;
switch (category) {
	// All chances can scale up 1 to 10 000
	case LootTable.CommonFishes: {
		return [
			[spr_raw_salmon, 20],
			[spr_raw_tuna, 80]
		];
	}break;
	case LootTable.CommonMaterials: {
		return [
			[spr_coal, 40], // 40% chance
			[spr_oak_log, 30], // 30% chance
			[spr_iron_ore, 20], // 20% chance
			[spr_iron_ingot, 10] // 10% chance
		];
	}break;
	case LootTable.CommonWeapons: {
		return [
			[]
		];
	}break;
	case LootTable.RareJewellery: {
		return [
			[undefined, 88], // 88% chance to get nothing
			[spr_gold_ring, 10], // 10% chance
			[spr_gold_amulet, 2] // 2% chance
		];
	}break;
	default: {
		return [];
	}
}