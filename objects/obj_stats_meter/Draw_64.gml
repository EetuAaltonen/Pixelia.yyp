if (global.hudState != "map") {
	if (instance_exists(obj_player)) {
		//Font
		draw_set_font(fnt_draw_gui_inv_medium);
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
	    draw_text(scr_gui(16,"x"), scr_gui(26,"y"), string(global.armor));
		
		//Font
		draw_set_font(fnt_draw_gui_inv_small);
		draw_set_color(c_black);
		
		//Draw healthPoints
		draw_text(scr_gui(65,"x"), scr_gui(9,"y"), string(global.healthPoints) + " / " + string(global.maxHealth));
		//Draw stamina
		draw_text(scr_gui(80,"x"), scr_gui(20,"y"), string(global.stamina) + " / " + string(global.maxStamina));
		//Draw mana
		draw_text(scr_gui(80,"x"), scr_gui(32,"y"), string(global.mana) + " / " + string(global.maxMana));
		
		//Font
		draw_set_font(fnt_draw_gui_inv_small);
		draw_set_color(c_black);
		draw_set_halign(fa_center);
	    draw_set_valign(fa_middle);
		//Elemental effects
		/*Effect {
			name; 0
			amount; 1
			duration; 2
		}*/
		var effectCount = ds_list_size(global.buffs);
		if (effectCount > 0) {
			var i, element;
			var margin = 11 + 2;
			for (i = 0; i < effectCount; i++) {
				element = ds_list_find_value(global.buffs, i);
				if (element[2] > -1) {
					draw_text(scr_gui((4+5)+(i*margin),"x"), scr_gui(53,"y"), element[2]);
				}
			}
		}
		
	}
}