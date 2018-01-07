var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

//Font
draw_set_font(fnt_toaster);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

///Draw toast
scr_draw_toast();

///Inventory
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (string_pos("shop", string(global.hudState))) {
	if (!instance_exists(obj_shop_buy_button)) {
		//Create Buttons
		var buttons = [
			obj_shop_buy_button,
			obj_shop_sell_button,
			obj_shop_repair_button,
			obj_shop_buy_back_button,
			obj_inv_close_button
		];
		var margin = 5;
		var arrayLength = array_length_1d(buttons);
		for (var i = 0; i < arrayLength; i++) {
			instance_create(viewX+4+(i*(85+margin)), viewY+40, buttons[i]);
			buttons[i].depth = (depth-1);
		}
	}
}

if (global.hudState == "inventoryBackpack") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_inventory_list_backpack();
} else if (global.hudState == "inventoryEquipments") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
    scr_list_items(global.inventory);
} else if (global.hudState == "inventorySkills") {
    //Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
	draw_text(viewX+30, viewY+120, "Coming Soon!");
	/*//Background
	draw_sprite(spr_st_primary_attributes_bg, 0, viewX+4, viewY+90);
    scr_st_draw_info();
    scr_st_create_skills();*/
} else if(global.hudState == "inventoryStats") {
	//Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	draw_text(viewX+30, viewY+120, "Coming Soon!");
    /*//Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
    //Icon
    draw_sprite(spr_death_counter, 0, viewX+30, viewY+120);
    //Death counter
    draw_text(viewX+50,viewY+112, string_hash_to_newline(string(global.death_counter)));
    //Icon
    draw_sprite(spr_kill_counter, 0, viewX+30, viewY+150);
    //Kill counter
    draw_text(viewX+50,viewY+143, string_hash_to_newline(string(global.kill_counter)));*/
    
    //Home village stats
    /*//Icon
    draw_sprite(spr_home_happiness, 0, viewX+230, viewY+120);
    //Happiness
    draw_text(viewX+250,viewY+112, string(global.home_happiness));
            
    //Icon
    draw_sprite(spr_home_defence, 0, viewX+230, viewY+150);
    //Defence
    draw_text(viewX+250,viewY+143, string(global.home_defence));
    
    //Icon
    draw_sprite(spr_home_hunger, 0, viewX+230, viewY+180);
    //Hunger
    draw_text(viewX+250,viewY+174, string(global.home_hunger));
    
    //Icon
    draw_sprite(spr_home_thirst, 0, viewX+230, viewY+210);
    //Thirst
    draw_text(viewX+250,viewY+205, string(global.home_thirst));*/
} else if (global.hudState == "shopBuy") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_shop_list_goods();
} else if (global.hudState == "shopSell") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_inventory_list_backpack();
} else if (global.hudState == "shopRepair") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	draw_text(viewX+30, viewY+120, "Coming Soon!");
	//scr_inventory_list_backpack();
} else if (global.hudState == "shopBuyBack") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	draw_text(viewX+30, viewY+120, "Coming Soon!");
	//scr_inventory_list_backpack();
} else if (scr_hud_state_some_of_crafting()) {
    //Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	scr_inventory_list_backpack();
} else if (global.hudState == "stashWithdraw") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_stash_list_items();
} else if (global.hudState == "stashDeposit") {
	//Background
	draw_sprite(spr_inventory_background, 0, viewX, viewY);
	
	//Create Search Box
	if (!instance_exists(obj_menu_text_box)) {
		instance_create(viewX+412, viewY+230, obj_menu_text_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_inventory_list_backpack();
}

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