///Draw self
if (room == Menu) {
    draw_self();
} else if (room == First_loading || global.hudState == "roomChange") {
	//When Not Showing
} else {
    if (global.hudState != "null"){
        draw_self();
		
		//Font
		draw_set_font(fnt_small_text);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_color(c_black);
		
		var mouseX = window_views_mouse_get_x();
		var mouseY = window_views_mouse_get_y();
		
		draw_text(x+20, y, string(mouseX) + ", " + string(mouseY));
    }
}
