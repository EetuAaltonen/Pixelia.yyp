sprite_index_ = sprite_index;
spriteName = sprite_get_name(sprite_index);
data = scr_search_item_data(sprite_index, "sprite");
/*Item {
	sprite;
	name;
	type;
	count;
	durability;
	weight;
	price;
	effect;
	effectAmount;
}*/
name = data[1];
type = data[2];
count = data[3];
data[4] = irandom_range(0, 100);
durability = data[4];
weight = data[5];
price = data[6];
effect = data[7];
effectAmount = data[8];

addedCount = 1;
collecting = false;
depth_ = depth;
moveToPlayer = false;


/*
name = scr_inventory_item_name(spriteName);
weight = scr_inventory_item_weight(spriteName);
type = scr_inventory_item_type(spriteName);