draw_self();
scr_highlight_self();

/*//Show Text
if (global.hudState == HudStates.Null && scr_highlighted()) {
	//Font
	draw_set_font(fnt_sign_text);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	if (instance_exists(obj_player)) {
		depth = obj_player.depth-1;
	}
	
	var lineCount = string_count("#", infoText);
    //draw_sprite(spr_sign_bg, lineCount, x, y-20);
	draw_sprite_ext(spr_sign_bg, 0, x, y-20, 1, (lineCount+1), 0, c_white, 1);
    draw_text(x, y-20, string_hash_to_newline(infoText));
} else {
	tempDepth = depth;
}