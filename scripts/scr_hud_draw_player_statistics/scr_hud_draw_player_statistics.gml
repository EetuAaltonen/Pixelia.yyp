var xPadding = 10;
var yPadding = 10;
	
//Font
draw_set_font(fnt_draw_gui_medium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);	
		
//Armor
draw_sprite_ext(spr_armor, 0, xPadding, yPadding, guiWRatio, guiHRatio,
		        image_angle, c_white, image_alpha);
if (global.armor > ((global.maxArmor + global.armorPlus)*0.75)) {
	draw_set_color(c_white);
} else if (global.armor > ((global.maxArmor + global.armorPlus)*0.5)) {
	draw_set_color(c_yellow);
} else if (global.armor > ((global.maxArmor + global.armorPlus)*0.25)) {
	draw_set_color(c_orange);
} else {
	draw_set_color(c_red);
}
draw_text(xPadding + 24, yPadding + 22, string(global.armor));

//Font
draw_set_font(fnt_draw_gui_small);
draw_set_color(c_black);

var barXPos = xPadding + 54;
var barYPos = yPadding;
var barWidth = 200;
var barHeight = 20;

//Health bar
scr_hud_draw_background(
	barXPos, barYPos,
	barWidth, barHeight,
	make_color_rgb(138, 51, 51),
	1, false, false
);
var barScale = global.healthPoints / global.maxHealth;
scr_hud_draw_background(
	barXPos, barYPos,
	barWidth * barScale, barHeight,
	make_color_rgb(191, 17, 17),
	1, false, false
);
draw_text(barXPos + (barWidth / 2), barYPos + (barHeight / 2), string(global.healthPoints) + " / " + string(global.maxHealth));

// Stamina bar
barYPos = yPadding + barHeight + 4;
scr_hud_draw_background(
	barXPos, barYPos,
	barWidth, barHeight,
	make_color_rgb(117, 114, 60),
	1, false, false
);
barScale = global.stamina/global.maxStamina;
scr_hud_draw_background(
	barXPos, barYPos,
	barWidth * barScale, barHeight,
	make_color_rgb(237, 223, 21),
	1, false, false
);
draw_text(barXPos + (barWidth / 2), barYPos + (barHeight / 2), string(global.stamina) + " / " + string(global.maxStamina));

// Mana bar
barYPos = yPadding + (barHeight + 4) * 2;
scr_hud_draw_background(
	barXPos, barYPos,
	barWidth, barHeight,
	make_color_rgb(25, 42, 117),
	1, false, false
);
barScale = global.mana/global.maxMana;
scr_hud_draw_background(
	barXPos, barYPos,
	barWidth * barScale, barHeight,
	make_color_rgb(12, 23, 235),
	1, false, false
);
draw_text(barXPos + (barWidth / 2), barYPos + (barHeight / 2), string(global.mana) + " / " + string(global.maxMana));

///Draw stats
/*var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
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

	//Font
	draw_set_font(fnt_draw_gui_medium);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);	
		
	//Draw armor
	if (global.armor > ((global.maxArmor + global.armorPlus)*0.75)) {
		draw_set_color(c_white);
	} else if (global.armor > ((global.maxArmor + global.armorPlus)*0.5)) {
		draw_set_color(c_yellow);
	} else if (global.armor > ((global.maxArmor + global.armorPlus)*0.25)) {
		draw_set_color(c_orange);
	} else {
		draw_set_color(c_red);
	}
	draw_text(16, 26, string(global.armor));
		
	//Font
	draw_set_font(fnt_draw_gui_small);
	draw_set_color(c_black);
		
	//Draw healthPoints
	draw_text(65, 9, string(global.healthPoints) + " / " + string(global.maxHealth));
	//Draw stamina
	draw_text(80, 20, string(global.stamina) + " / " + string(global.maxStamina));
	//Draw mana
	draw_text(80, 32, string(global.mana) + " / " + string(global.maxMana));
		
	//Font
	draw_set_font(fnt_draw_gui_small);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//Elemental effects
	//Effect {
	//	name; 0
	//	amount; 1
	//	duration; 2
	//}
	var effectCount = ds_list_size(global.buffs);
	if (effectCount > 0) {
		var i, element;
		var margin = 11 + 2;
		for (i = 0; i < effectCount; i++) {
			element = ds_list_find_value(global.buffs, i);
			if (element[2] > -1) {
				draw_text((4+5)+(i*margin), 53, element[2]);
			}
		}
	}
}