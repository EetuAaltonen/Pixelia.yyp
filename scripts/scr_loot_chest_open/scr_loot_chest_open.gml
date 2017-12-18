var Ypos;
var YposPlus = 19;
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewXCenter = camera_get_view_width(view_camera[0])/2;
var viewYCenter = camera_get_view_height(view_camera[0])/2;

//Font
draw_set_font(fnt_loot_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
var margin;
var items_;
var itemAmount;
if (getLoot) {
	itemAmount = ds_list_size(items);
	if (itemAmount == 0 && opened) {
		ds_list_clear(items);
		ds_list_clear(global.tempLoot);
		var items_ = scr_loot_chest_get_items();
		itemAmount = array_length_1d(items_);
		for (var i = 0; i < itemAmount; i++) {
			ds_list_add(items, items_[i]);
		}
		itemAmount = ds_list_size(global.tempLoot);
	}
	ds_list_copy(global.tempLoot, items);
	itemAmount = ds_list_size(items);
	for (var i = 0; i < itemAmount; i++) {
		margin = (YposPlus*i);
		var itemSprite = ds_list_find_value(items, i);
		Name[i] = scr_inventory_item_name(itemSprite);
	    Weight[i] = scr_inventory_item_weight(itemSprite);
		instance_create(viewX+250-84,viewY+100+margin, obj_listed_item);
		(instance_nearest(viewX+250-84,viewY+100+margin, obj_listed_item)).sprite_index = asset_get_index(itemSprite);
		(instance_nearest(viewX+250-84,viewY+100+margin, obj_listed_item)).itemCount = 1;
		(instance_nearest(viewX+250-84,viewY+100+margin, obj_listed_item)).checkEquipped = true;
	}
	getLoot = false;
}
itemAmount = ds_list_size(items);
for (var i = 0; i < itemAmount; i++) {
	margin = (YposPlus*i);
	draw_sprite(spr_inv_item_bg, 0, viewX + 250 - 84, viewY + 100 + margin);
	draw_sprite(spr_inv_item_description_bg, 0, viewX + 250, viewY + 100 + margin);
	draw_sprite(spr_inv_item_count_bg, 0, viewX + 250 + 101, viewY + 100 + margin);
	//draw_sprite(asset_get_index(items[i]), 0, viewX + 250 - 84, viewY + 100 + margin);
	draw_text(viewX + 250 - 64, viewY + 100 + margin, Name[i]);
	draw_text(viewX + 250 + 76, viewY + 100 + margin, string(Weight[i]) + " Pw");
}