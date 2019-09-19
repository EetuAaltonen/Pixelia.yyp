display_set_gui_size(guiWidth, guiHeight);

if (global.hudState == HudStates.Inventory ||
	global.hudState == HudStates.Crafting ||
	global.hudState == HudStates.Shop) {
	// Background
	scr_hud_draw_background(
		0, 0,
		guiWidth, guiHeight,
		make_color_rgb(102, 86, 61),
		1, false
	);

	// Grid background
	scr_inventory_draw_background();
}

if (global.hudState != HudStates.Map) {
	//Font
	draw_set_font(fnt_inventory_text);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	///Hotbar background
	scr_hud_draw_background(
		0, 600,
		guiWidth, guiHeight,
		make_color_rgb(102, 86, 61),
		1, false
	);

	/*var barScale = global.xp / global.xpLimit;
	draw_sprite_ext(spr_xp_bg, 0, 10, 285, (48*10)*barScale, 1, 0, -1, 1);
	for (var i = 0; i < 10; i++) {
		draw_sprite_ext(spr_xp_bar, 0, 10+(i*48), 285, 1, 1, 0, -1, 1);
	}
	barScale = global.enchantingXp / global.enchantingXpLimit;
	draw_sprite_ext(spr_xp_bg, 1, 10, 292, (48*10)*barScale, 1, 0, -1, 1);
	for (var i = 0; i < 10; i++) {
		draw_sprite_ext(spr_xp_bar, 0, 10+(i*48), 292, 1, 1, 0, -1, 1);
	}*/
	
	//Font
	draw_set_font(fnt_draw_gui_inv_small);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	//Level
	draw_text(20, 630, "Level  " + string(global.level));
	
	draw_set_halign(fa_right);
	//Skill XP
	draw_text(1060, 630, "XP  " + string(global.xp) + " / " + string(global.xpLimit));
	
	draw_set_halign(fa_left);
	//Enchanting XP
	draw_text(800, 630, "Ench. XP  " + string(global.enchantingXp) + " / " + string(global.enchantingXpLimit));
	
	//Coins
	draw_sprite_ext(spr_money_icon, 0, 100,
	                630, guiWRatio, guiHRatio,
	                image_angle, c_white, image_alpha);
	draw_text(150, 630, scr_coins_format(global.coins));
	
	//Potion
	draw_sprite_ext(spr_potion_icon, 0, 300,
	                630, guiWRatio, guiHRatio,
	                image_angle, c_white, image_alpha);
	draw_text(350, 630, string(global.potions) + " x");
}

/*
//Font
draw_set_font(fnt_draw_gui_inv_medium);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == HudStates.Crafting) {
	//Draw Info
	scr_draw_info();
} else if (global.hudState == HudStates.Inventory ||
	global.hudState == HudStates.Shop ||
	global.hudState == HudStates.Stash) {
	
	if (global.hudAction == HudActions.Backpack ||
		global.hudAction == HudActions.Equipment ||
		global.hudAction == HudActions.Sell ||
		global.hudAction == HudActions.Buy ||
		global.hudAction == HudActions.Deposit) {
			
		//Draw Info
		scr_draw_info();
		
	} else if (global.hudAction == HudActions.Skills) {
	    // TODO: Rewrite skills
		draw_text(viewX+30, viewY+120, "Coming Soon!");
		//Background
		//draw_sprite(spr_st_primary_attributes_bg, 0, viewX+4, viewY+90);
	    //scr_st_draw_info();
	    //scr_st_create_skills();
		//scr_skills_list_skills();
	} else if (global.hudAction == HudActions.Stats) {
	    // TODO: Rewrite stats
		//Background
	    //draw_sprite(spr_inventory_background, 0, viewX, viewY);
	    //Icon
	    //draw_sprite(spr_death_counter, 0, viewX+30, viewY+120);
	    //Death counter
	    //draw_text(viewX+50,viewY+112, string_hash_to_newline(string(global.death_counter)));
	    //Icon
	    //draw_sprite(spr_kill_counter, 0, viewX+30, viewY+150);
	    //Kill counter
	    //draw_text(viewX+50,viewY+143, string_hash_to_newline(string(global.kill_counter)));
    
	    //Home village stats
	    //Icon
	    //draw_sprite(spr_home_happiness, 0, viewX+230, viewY+120);
	    //Happiness
	    //draw_text(viewX+250,viewY+112, string(global.home_happiness));
            
	    //Icon
	    //draw_sprite(spr_home_defence, 0, viewX+230, viewY+150);
	    //Defence
	    //draw_text(viewX+250,viewY+143, string(global.home_defence));
    
	    //Icon
	    //draw_sprite(spr_home_hunger, 0, viewX+230, viewY+180);
	    //Hunger
	    //draw_text(viewX+250,viewY+174, string(global.home_hunger));
    
	    //Icon
	    //draw_sprite(spr_home_thirst, 0, viewX+230, viewY+210);
	    //Thirst
	    //draw_text(viewX+250,viewY+205, string(global.home_thirst));
	} else if (global.hudAction == HudActions.Repair) {
		draw_text(viewX+30, viewY+120, "Coming Soon!");
		//scr_inventory_list_backpack();
	} else if (global.hudAction == HudActions.BuyBack) {
		draw_text(viewX+30, viewY+120, "Coming Soon!");
		//scr_inventory_list_backpack();
	} else if (global.hudAction == HudActions.Withdraw) {
		scr_stash_list_items();
	}	
} else if (global.hudState == HudStates.Map) {
	//Font
	draw_set_font(fnt_draw_gui_inv_small);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	//Level
	draw_text(scr_gui(10, "x"), scr_gui(279, "y"), "Level  " + string(global.level));
	
	draw_set_halign(fa_right);
	//Skill XP
	draw_text(scr_gui(490, "x"), scr_gui(279, "y"), "XP  " + string(global.xp) + " / " + string(global.xpLimit));
	
	draw_set_halign(fa_left);
	//Enchanting XP
	draw_text(scr_gui(298, "x"), scr_gui(279, "y"), "Ench. XP  " + string(global.enchantingXp) + " / " + string(global.enchantingXpLimit));
	
	//Coins
	draw_text(scr_gui(116, "x"), scr_gui(279, "y"), scr_coins_format(global.coins));
	
	//Potions
	draw_text(scr_gui(212, "x"), scr_gui(279, "y"), string(global.potions) + " x");
}