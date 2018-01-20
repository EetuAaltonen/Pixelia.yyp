var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

//Time Played
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
//Global Clock
var tempGHours = string(gHours);
var tempGMinutes = string(gMinutes);
var tempGSeconds = string(gSeconds);

if (gHours < 10) {
	tempGHours = "0" + string(gHours);
}
if (gMinutes < 10) {
	tempGMinutes = "0" + string(gMinutes);
}
if (gSeconds < 10) {
	tempGSeconds = "0" + string(gSeconds);
}

if (global.hudState == "null" || global.hudState == "minigame") {
	//Font
	draw_set_font(fnt_inventory_text);
	if (obj_screen_controller.darknessAlpha > 0.5) {
		draw_set_color(c_white);
	} else {
		draw_set_color(c_black);
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	//Statics
	draw_text(viewX+5, viewY+45, "FPS: " + string(fps));
	//Time Played
	draw_text(viewX+5, viewY+65, "Time Played:");
	draw_text(viewX+5, viewY+75, "Days " + string(days));
	draw_text(viewX+5, viewY+85, "Hours "+ tempHours + ":" + tempMinutes + ":" + tempSeconds);
	//Global Clock
	draw_text(viewX+5, viewY+105, "Global Date " + string(gDays) + "." + string(gMonths) + "." + string(gYears));
	draw_text(viewX+5, viewY+115, "Global Clock " + tempGHours + ":" + tempGMinutes + ":" + tempGSeconds);
	
}

//draw_sprite_ext(spr_darkness,0,viewX,viewY,viewWidth,viewHeight,0,c_white,global.darkness);