depth = Depth.Loot;
sprite_index_ = sprite_index;
spriteName = sprite_get_name(sprite_index);
data = scr_item_search_data(sprite_index, "sprite");

//scr_item_info_struct()
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