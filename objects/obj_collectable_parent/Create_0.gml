sprite_index_ = sprite_index;
spriteName = sprite_get_name(sprite_index);
addedCount = 1;
collecting = false;
depth_ = depth;
moveToPlayer = false;
name = scr_inventory_item_name(spriteName);
weight = scr_inventory_item_weight(spriteName);
type = scr_inventory_item_type(spriteName);