///Draw stats
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
if (global.hudState != "map") {
	if (instance_exists(obj_player)) {
		//Draw armor background
	    draw_sprite(spr_armor, image_index, viewX+4, viewY+14);
		//Draw healthPoints background
		draw_sprite_ext(spr_stamina_n_mana, 0, viewX+4, viewY+4, 126*(global.healthPoints/global.maxHealth), 1, 0, c_white, 1);
		//Draw stamina background
		draw_sprite_ext(spr_stamina_n_mana, 1, viewX+30, viewY+15, 100*(global.stamina/global.maxStamina), 1, 0, c_white, 1);
		//Draw mana background
		draw_sprite_ext(spr_stamina_n_mana, 2, viewX+30, viewY+27, 100*(global.mana/global.maxMana), 1, 0, c_white, 1);
	
		//Elemental effects
		var effectCount = ds_list_size(global.buffs);
		if (effectCount > 0) {
			var i, element, sprite;
			var margin = 11 + 2;
			for (i = 0; i < effectCount; i++) {
				element = ds_list_find_value(global.buffs, i);
				sprite = asset_get_index("spr_buff_icon_" + element[0]);
				draw_sprite(sprite, 0, viewX+4+(i*margin), viewY+38);	
			}
		}
	}
}