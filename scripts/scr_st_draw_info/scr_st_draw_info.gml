var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var hMargin = 10;

//Font
draw_set_font(fnt_small_text);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
//Skilltree
var arrayLength = array_length_1d(global.skillPrimaryAttributes);
for (var i = 0; i < arrayLength; i++) {
	draw_set_color(c_black);
	draw_set_halign(fa_right);
	draw_text(viewX+65, viewY+120+(hMargin*i), global.skillPrimaryAttributes[i] + ":");
	if (globalPrimaryAttributesValues[i] != global.skillPrimaryAttributesValues[i]) {
		draw_set_color(c_green);
	}
	draw_set_halign(fa_left);
	draw_text(viewX+70, viewY+120+(hMargin*i), string(globalPrimaryAttributesValues[i]));
}
draw_set_color(c_black);
draw_set_halign(fa_right);
draw_text(viewX+65, viewY+105, "Skill points:");
draw_set_halign(fa_left);
draw_text(viewX+70, viewY+105, string(globalSkillPoints));
/*draw_text(__view_get( e__VW.XView, 0 )+400, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Skill points: " + string(global.skillPoints)));
draw_text(__view_get( e__VW.XView, 0 )+15, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Name"));
draw_text(__view_get( e__VW.XView, 0 )+15, __view_get( e__VW.YView, 0 )+100, string_hash_to_newline(skill_name));
draw_text(__view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Bonus"));
draw_text(__view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+100, string_hash_to_newline(string(skill_bonus)));
draw_text(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Price"));
draw_text(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+100, string_hash_to_newline(string(skill_price)));