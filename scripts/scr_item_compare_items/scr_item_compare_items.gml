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
				item[4] == item2[4] && //Durability
				item[7] == item2[7] && //Effect
				item[8] == item2[8] && //EffectAmount
				item[9] == item2[9] && //EffectDuration
				item[10] == item2[10]); //RequiredLevel
	}break;
	case "name": {
		return (item[1] == item2[1]);
	}
	case "small": {
		if (item[7] != "null" && item2[7] != "null") {
			if (item[7] == item2[7]) {
				if (item[8] != "null" && item2[8] != "null") {
					if (item[8] == item2[8]) {
						if (item[9] != "null" && item2[9] != "null") {
							if (item[9] == item2[9]) {
								if (item[4] != "null" && item2[4] != "null") {
									return (item[4] > item2[4]);	
								}
							}
							return (item[9] < item2[9]);
						}
					}
					return (item[8] < item2[8]);
				}
			}
			return (item[7] < item2[7]);	
		}
		if (item[4] != "null" && item2[4] != "null") {
			return (item[4] > item2[4]);	
		}
		if (item[10] > 0 && item2[10] > 0) {
			return (item[10] < item2[10]);
		}
		return false;
	}
}