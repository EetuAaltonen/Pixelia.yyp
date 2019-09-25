if (global.hudState == HudStates.Inventory ||
	global.hudState == HudStates.Crafting ||
	global.hudState == HudStates.Shop) {
	// Background
	scr_hud_draw_background(
		0, 0,
		guiWidth, guiHeight,
		make_color_rgb(102, 86, 61),
		1, false, false
	);
	// Item info
	scr_inventory_draw_item_info();
	// Mouse/control info
	scr_inventory_draw_mouse_info();
}

/*
//Font
draw_set_font(fnt_draw_gui_medium);
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
}