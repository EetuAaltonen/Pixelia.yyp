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

if (global.hudState == HudStates.Null || global.hudState == HudStates.Minigame) {
	
	
	//Font
	draw_set_font(fnt_draw_gui_inv_small);
	if (obj_screen_controller.darknessAlpha > 0.5) {
		draw_set_color(c_white);
	} else {
		draw_set_color(c_black);
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	if (room != First_loading) {
		//Statics
		draw_text(scr_gui(5,"x"), scr_gui(64,"y"), "FPS: " + string(fps));
		//Time Played
		draw_text(scr_gui(5,"x"), scr_gui(85,"y"), "Time Played:");
		draw_text(scr_gui(5,"x"), scr_gui(95,"y"), "Days " + string(days));
		draw_text(scr_gui(5,"x"), scr_gui(105,"y"), "Hours "+ tempHours + ":" + tempMinutes + ":" + tempSeconds);
		//Global Clock
		draw_text(scr_gui(5,"x"), scr_gui(115,"y"), "Global Date " + string(gDays) + "." + string(gMonths) + "." + string(gYears));
		draw_text(scr_gui(5,"x"), scr_gui(125,"y"), "Global Clock " + tempGHours + ":" + tempGMinutes + ":" + tempGSeconds);
	}
	
}

//draw_sprite_ext(spr_darkness,0,viewX,viewY,viewWidth,viewHeight,0,c_white,global.darkness);