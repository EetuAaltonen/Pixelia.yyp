///Draw armor info
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
if (instance_exists(obj_player)) {
	//Draw armor
    draw_sprite(spr_armor, image_index, viewX+4, viewY+3); 
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
    draw_text(viewX+16, viewY+14, string(global.armor));
	
	//Draw healthPoints && background
	for (var i = 0; i < global.maxHealth; i++) {
		draw_sprite(spr_life_point, 1, viewX+30+(i*19), viewY+6);
		if (i < global.healthPoints) {
			draw_sprite(spr_life_point, 0, viewX+30+(i*19), viewY+6);
		}
	}
	//Draw stamina && background
	for (var i = 0; i < global.maxStamina; i++) {
		draw_sprite(spr_stamina_n_mana, 2, viewX+4+(i*8), viewY+28);
		if (i < global.stamina) {
			draw_sprite(spr_stamina_n_mana, 0, viewX+4+(i*8), viewY+28);
		}
	}
	//Draw mana && background
	for (var i = 0; i < global.maxMana; i++) {
		draw_sprite(spr_stamina_n_mana, 2, viewX+4+(i*8), viewY+38);
		if (i < global.mana) {
			draw_sprite(spr_stamina_n_mana, 1, viewX+4+(i*8), viewY+38);
		}
	}
}
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var drawHours = 0;
if (global.timerHours < 10) {
	drawHours = "0" + string(global.timerHours);
} else {
	drawHours = string(global.timerHours);
}

var drawMinutes = 0;
if (global.timerMinutes < 10) {
	drawMinutes = "0" + string(global.timerMinutes);
} else {
	drawMinutes = string(global.timerMinutes);
}

var drawSeconds = 0;
var tempSeconds = global.timerSeconds;
tempSeconds = floor(tempSeconds/100);
if (tempSeconds < 10) {
	drawSeconds = "0" + string(tempSeconds);
} else {
	drawSeconds = string(tempSeconds);
}

draw_text(viewX+5, viewY+50, drawHours + ":" +
							  drawMinutes + ":" +
							  drawSeconds);
draw_text(viewX+5, viewY+60, "fps: " + string(fps));
draw_text(viewX+5, viewY+70, "global.delta: " + string(global.delta));