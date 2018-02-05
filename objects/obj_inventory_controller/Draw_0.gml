var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

///Inventory
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState != "map") {
	//Font
	draw_set_font(fnt_inventory_text);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	///Hotbar background
	draw_sprite_ext(spr_hotbar_bg, image_index, viewX+0, viewY+270,
	                image_xscale, image_yscale, image_angle, c_white, image_alpha);

	///Level, Coins, Potions
	//Font
	draw_set_font(fnt_hotbar_text);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	//Level
	draw_text(viewX+10,viewY+279, "Level  " + string(global.level));
	draw_set_halign(fa_right);
	//Skill XP
	draw_text(viewX+490,viewY+279, "XP  " + string(global.xp) + " / " + string(global.xpLimit));
	draw_set_halign(fa_left);
	//Enchanting XP
	draw_text(viewX+298,viewY+279, "Ench. XP  " + string(global.enchantingXp) + " / " + string(global.enchantingXpLimit));

	var barScale = global.xp / global.xpLimit;
	draw_sprite_ext(spr_xp_bg, 0, viewX+10, viewY+285, (48*10)*barScale, 1, 0, -1, 1);
	for (var i = 0; i < 10; i++) {
		draw_sprite_ext(spr_xp_bar, 0, viewX+10+(i*48), viewY+285, 1, 1, 0, -1, 1);
	}
	barScale = global.enchantingXp / global.enchantingXpLimit;
	draw_sprite_ext(spr_xp_bg, 1, viewX+10, viewY+292, (48*10)*barScale, 1, 0, -1, 1);
	for (var i = 0; i < 10; i++) {
		draw_sprite_ext(spr_xp_bar, 0, viewX+10+(i*48), viewY+292, 1, 1, 0, -1, 1);
	}

	//Coin logo
	draw_sprite_ext(spr_money_icon, image_index, viewX+106, 
	                viewY+280, image_scale_coin, image_scale_coin, 
	                image_angle, c_white, image_alpha);  
	//Coins
	draw_text(viewX+116,viewY+279, string(global.coins));

	//Potion logo
	draw_sprite_ext(spr_potion_icon, image_index, viewX+202, 
	                viewY+280, image_scale_potion, image_scale_potion, 
	                image_angle, c_white, image_alpha);      
	          
	//Potions
	draw_text(viewX+212,viewY+279, string(global.potions));
}

//Background
scr_inventory_draw_background();