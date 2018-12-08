/*if (room != Menu) {
	if (room == First_loading || global.hudState == "roomChange") {
		//When Not Showing
	} else {
	    if (global.hudState != "null"){
			//Font
			draw_set_font(fnt_small_text);
			draw_set_halign(fa_left);
			draw_set_valign(fa_middle);
			draw_set_color(c_black);
		
			var viewX = camera_get_view_x(view_camera[0]);
			var viewY = camera_get_view_y(view_camera[0]);
		
			var mouseX = window_view_mouse_get_x(0);
			var mouseY = window_view_mouse_get_y(0);
		
			var mouseViewX = (mouseX-viewX);
			var mouseViewY = (mouseY-viewY);
		
			draw_text(x+20, y, string(mouseViewX) + ", " + string(mouseViewY));
	    }
	}
}