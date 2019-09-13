//scr_item_info_struct()

var item = argument0;
var item2 = argument1;
var compare = argument2;

switch (compare) {
	case "full": {
		var i, property;
		var compareProperties = [
			ItemData.Sprite,
			ItemData.Name,
			ItemData.Type,
			ItemData.Damage,
			ItemData.Speed,
			ItemData.Armor,
			ItemData.Durability,
			ItemData.Effect,
			ItemData.EffectAmount,
			ItemData.EffectDuration,
			ItemData.RequiredLevel
		];
		var dataCount = array_length_1d(compareProperties);
		for (i = 0; i < dataCount; i++) {
			property = compareProperties[i];
			if (item[property] != item2[property]) {
				return false;
			}
		}
		return true;
	}break;
	case "name": {
		return (item[ItemData.Name] == item2[ItemData.Name]);
	}break;
	case "small": {
		if (item[ItemData.Effect] != "null" && item2[ItemData.Effect] != "null") {
			if (item[ItemData.Effect] == item2[ItemData.Effect]) {
				if (item[ItemData.EffectAmount] != "null" && item2[ItemData.EffectAmount] != "null") {
					if (item[ItemData.EffectAmount] == item2[ItemData.EffectAmount]) {
						if (item[ItemData.EffectDuration] != "null" && item2[ItemData.EffectDuration] != "null") {
							if (item[ItemData.EffectDuration] == item2[ItemData.EffectDuration]) {
								if (item[ItemData.Durability] != "null" && item2[ItemData.Durability] != "null") {
									return (item[ItemData.Durability] > item2[ItemData.Durability]);	
								}
							}
							return (item[ItemData.EffectDuration] < item2[ItemData.EffectDuration]);
						}
					}
					return (item[ItemData.EffectAmount] < item2[ItemData.EffectAmount]);
				}
			}
			return (item[ItemData.Effect] < item2[ItemData.Effect]);	
		}
		if (item[ItemData.Durability] != "null" && item2[ItemData.Durability] != "null") {
			return (item[ItemData.Durability] > item2[ItemData.Durability]);	
		}
		if (item[ItemData.RequiredLevel] > 0 && item2[ItemData.RequiredLevel] > 0) {
			return (item[ItemData.RequiredLevel] < item2[ItemData.RequiredLevel]);
		}
		return false;
	}break;
}
return true;