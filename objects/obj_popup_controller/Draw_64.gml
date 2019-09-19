if (global.popUp && message != undefined) {
	var viewWidth = camera_get_view_width(view_camera[0]);
	var viewHeight = camera_get_view_height(view_camera[0]);
	
	var positionX = scr_draw_position_on_screen(x, "x");
	var positionY = scr_draw_position_on_screen(y, "y");
	var textPosX = scr_draw_camera_position_to_gui(positionX, "x");
	var textPosY = scr_draw_camera_position_to_gui(positionY, "y");

	//Font
	draw_set_font(fnt_draw_gui_menu_small);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var keyInfo;
	if (cancelKey == undefined) {
		keyInfo = "OK [ " + string(drawAcceptKey) + " ]";
	} else {
		keyInfo = "Accept [ " + string(drawAcceptKey) + " ]    " +
					"Cancle [ " + string(drawCancelKey) + " ]"
	}
	
	var stringHeight = string_height(message);

	draw_text(scr_gui((viewWidth / 2), "x"), scr_gui((viewHeight / 2), "y"), message);
	draw_text(scr_gui((viewWidth / 2), "x"), scr_gui(((viewHeight / 2) + stringHeight), "y"), keyInfo);
}