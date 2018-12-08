///Draw armor info
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
if (global.hudState != "map") {
	if (instance_exists(obj_player)) {
		//Draw armor
	    draw_sprite(spr_armor, image_index, viewX+4, viewY+14); 
	    //Font
	    draw_set_font(fnt_armor_text);
		if (global.armor > ((global.maxArmor + global.armorPlus)*0.75)) {
	        draw_set_color(c_white);
	    } else if (global.armor > ((global.maxArmor + global.armorPlus)*0.5)) {
	        draw_set_color(c_yellow);
	    } else if (global.armor > ((global.maxArmor + global.armorPlus)*0.25)) {
	        draw_set_color(c_orange);
	    } else {
	        draw_set_color(c_red);
	    }
	    draw_set_halign(fa_center);
	    draw_set_valign(fa_middle);
	    draw_text(viewX+16, viewY+26, string(global.armor));
	
		draw_set_color(c_black);
		//Draw healthPoints && background
		draw_sprite_ext(spr_stamina_n_mana, 0, viewX+4, viewY+4, 126*(global.healthPoints/global.maxHealth), 1, 0, c_white, 1);
		draw_text(viewX+65, viewY+9, string(global.healthPoints) + " / " + string(global.maxHealth));
		//Draw stamina && background
		draw_sprite_ext(spr_stamina_n_mana, 1, viewX+30, viewY+15, 100*(global.stamina/global.maxStamina), 1, 0, c_white, 1);
		draw_text(viewX+80, viewY+20, string(global.stamina) + " / " + string(global.maxStamina));
		//Draw mana && background
		draw_sprite_ext(spr_stamina_n_mana, 2, viewX+30, viewY+27, 100*(global.mana/global.maxMana), 1, 0, c_white, 1);
		draw_text(viewX+80, viewY+32, string(global.mana) + " / " + string(global.maxMana));
	}
}