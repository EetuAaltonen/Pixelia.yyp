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
		var effects = ds_list_create();
		ds_list_add(effects, ["freeze", 1]);
		ds_list_add(effects, ["bleed", 1]);
		ds_list_add(effects, ["poison", 1]);
		ds_list_add(effects, ["fire", 1]);
		ds_list_add(effects, ["cursed", 1]);
		ds_list_add(effects, ["armor", 1]);
		ds_list_add(effects, ["slow", 1]);
		ds_list_add(effects, ["damage", 1]);
		ds_list_add(effects, ["confused", 1]);
		ds_list_add(effects, ["hp", 1]);
		ds_list_add(effects, ["mana", 1]);
		ds_list_add(effects, ["stamina", 1]);
		ds_list_add(effects, ["overloaded", 1]);
		
		ds_list_add(effects, ["antifreeze", 1]);
		ds_list_add(effects, ["antibleed", 1]);
		ds_list_add(effects, ["antipoison", 1]);
		ds_list_add(effects, ["antifire", 1]);
		ds_list_add(effects, ["anticursed", 1]);
		ds_list_add(effects, ["armorplus", 1]);
		ds_list_add(effects, ["speed", 1]);
		ds_list_add(effects, ["antidamage", 1]);
		ds_list_add(effects, ["damageplus", 1]);
		ds_list_add(effects, ["anticonfused", 1]);
		ds_list_add(effects, ["hpregen", 1]);
		ds_list_add(effects, ["manaregen", 1]);
		ds_list_add(effects, ["staminaregen", 1]);
		
		var i, element, sprite;
		var effectCount = ds_list_size(effects);
		var margin = 11 + 2;
		for (i = 0; i < effectCount; i++) {
			element = ds_list_find_value(effects, i);
			sprite = asset_get_index("spr_buff_icon_" + element[0]);
			draw_sprite(sprite, 0, viewX+4+(i*margin), viewY+38);	
		}
	}
}