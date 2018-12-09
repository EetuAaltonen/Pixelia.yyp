/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
	requiredLevel; 9
}*/
var item = argument0;
var item2 = argument1;
var compare = argument2;
var size1, size2;

switch(compare) {
	case "full": {
		return (item[0] == item2[0] && //Sprite
				item[1] == item2[1] && //Name
				item[2] == item2[2] && //Type/Shop
				item[4] == item2[4] && //Duration
				item[7] == item2[7] && //Effect
				item[8] == item2[8]); //EffectAmount
	}break;
	case "name": {
		return (item[1] == item2[1]);
	}
	case "smaller": {
		if (item[4] != "null" && item2[4] != "null") {
			return (item[4] < item2[4]);	
		}
		if (item[8] != "null" && item2[8] != "null") {
			return (item[8] < item2[8]);	
		}
		return false;
	}
}