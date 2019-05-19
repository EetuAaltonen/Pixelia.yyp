//scr_item_info_struct()

var item = argument0;
var item2 = argument1;
var compare = argument2;
var size1, size2;

switch(compare) {
	case "full": {
		return (item[0] == item2[0] && //Sprite
				item[1] == item2[1] && //Name
				item[2] == item2[2] && //Type/Shop
				item[4] == item2[4] && //Damage
				item[5] == item2[5] && //Speed
				item[6] == item2[6] && //Armor
				item[7] == item2[7] && //Durability
				item[8] == item2[8] && //Effect
				item[9] == item2[9] && //EffectAmount
				item[10] == item2[10] && //EffectDuration
				item[13] == item2[13]); //RequiredLevel
	}break;
	case "name": {
		return (item[1] == item2[1]);
	}
	case "small": {
		if (item[8] != "null" && item2[8] != "null") {
			if (item[8] == item2[8]) {
				if (item[9] != "null" && item2[9] != "null") {
					if (item[9] == item2[9]) {
						if (item[10] != "null" && item2[10] != "null") {
							if (item[10] == item2[10]) {
								if (item[7] != "null" && item2[7] != "null") {
									return (item[7] > item2[7]);	
								}
							}
							return (item[10] < item2[10]);
						}
					}
					return (item[9] < item2[9]);
				}
			}
			return (item[8] < item2[8]);	
		}
		if (item[7] != "null" && item2[7] != "null") {
			return (item[7] > item2[7]);	
		}
		if (item[13] > 0 && item2[13] > 0) {
			return (item[13] < item2[13]);
		}
		return false;
	}
}