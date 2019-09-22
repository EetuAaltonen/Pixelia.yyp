if (alarm[1] > 0) {	
	if (global.hudState == HudStates.Null) {
		//Font
		draw_set_font(fnt_draw_gui_sign);
		draw_set_color(c_orange);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);

		var posX = scr_position_to_gui(x, "x");
		var posY = scr_position_to_gui(y, "y");

		//draw_text(scr_gui(posX, "x"), scr_gui(posY-40, "y"), "x: " + string(x) + "|y: " + string(y) + " source:" + string(source)); 
		//draw_text(scr_gui(posX, "x"), scr_gui(posY-30, "y"), "Respawn " + respawnDateTime);
		draw_text(scr_gui(posX, "x"), scr_gui(posY-20, "y"), scr_time_seconds_to_timer((alarm[1]/room_speed), "hh-mm-ss", ""));
	}
}