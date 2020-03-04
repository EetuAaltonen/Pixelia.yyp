var posX = scr_pos_to_gui(x, Dim.X);
var posY = scr_pos_to_gui(y, Dim.Y);

//Show Text
if (global.hudState == HudStates.Null && scr_highlighted()) {
	//Font
	draw_set_font(fnt_draw_gui_sign);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	/*if (instance_exists(obj_player)) {
		depth = obj_player.depth-1;
	}*/
	
	var lineCount = string_count("#", infoText);
	var textWidth = string_width(string_hash_to_newline(infoText));
	var textHeight = string_height(string_hash_to_newline(infoText));
	var margin = 5;
    //draw_sprite(spr_sign_bg, lineCount, x, y-20);
	draw_sprite_ext(spr_sign_bg, 0, scr_gui(posX, "x"), scr_gui(posY-20, "y"), textWidth/3, (textHeight+(margin*4)/*(20*(lineCount+1))*/)*(-1), 0, c_white, 1);
	draw_text(scr_gui(posX, "x"), scr_gui(posY-20-margin, "y"), string_hash_to_newline(infoText));
} else {
	tempDepth = depth;
}