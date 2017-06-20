//Font
draw_set_font(fnt_damage_count);
var color;
if (critical) {
	color = c_red;
} else {
	color = c_yellow;
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_color(x, y, string(damage), 5, 300, color, color, color, color, textAlpha);