//Font
draw_set_font(fnt_damage_count);
var color;
draw_set_valign(fa_middle);
//Damage to health
if (damageToHealth > 0) {
	draw_set_halign(fa_right);
	switch (critical) {
		case true: {color = c_red};break;
		case false: {color = c_yellow};break;
	}
	draw_text_ext_color(x-2, y, string(damageToHealth), 5, 300,
						color, color, color, color, textAlpha);
}
//Damage to armor
if (damageToArmor > 0) {
	switch (critical) {
		case true: {color = c_red};break;
		case false: {color = c_black};break;
	}
	draw_set_halign(fa_left);			
	draw_text_ext_color(x+2, y+5, string(damageToArmor), 5, 300,
						color, color, color, color, textAlpha);
}