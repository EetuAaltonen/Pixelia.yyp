var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var tempHours = string(hours);
var tempMinutes = string(minutes);
var tempSeconds = string(seconds);

if (hours < 10) {
	tempHours = "0" + string(hours);
}

if (minutes < 10) {
	tempMinutes = "0" + string(minutes);
}

if (seconds < 10) {
	tempSeconds = "0" + string(seconds);
}

if (global.hudState == "null") {
	//Font
	draw_set_font(fnt_inventory_text);
	if (obj_screen_controller.darknessAlpha > 0.5) {
		draw_set_color(c_white);
	} else {
		draw_set_color(c_black);
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	//Date & Time
	draw_text(viewX+5, viewY+45, "Date " + string(days) + "." + string(months) + "." + string(years));
	draw_text(viewX+5, viewY+55, "Time " + tempHours + ":" + tempMinutes + ":" + tempSeconds);
	//Statics
	draw_text(viewX+5, viewY+65, "fps: " + string(fps));
}

//draw_sprite_ext(spr_darkness,0,viewX,viewY,viewWidth,viewHeight,0,c_white,global.darkness);