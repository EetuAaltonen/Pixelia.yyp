/*
enum skill {
	name,
	level,
	xp,
	xpLimit
}
*/
var skills = global.skills;
var skill;
var i;
var outlineWidth = 2;
var margin = 2 + (outlineWidth*2);
var padding = [10, 5, 10, 5]; //[left,top,right,bottom]
var xPos = 10;
var yPos = 130;

var txt, txtLength, txtHeight;
var boxTotalHeight;
var listSize = array_length_1d(skills);

for (i = 0; i < listSize; i++) {
	skill = skills[i];
	txt = skill[0] + ":  " + string(skill[1]) + "  |  XP  " + string(skill[2]) + " / " + string(skill[3]);
	txtLength = string_width(txt);
	txtHeight = string_height(txt);
	boxTotalHeight = (txtHeight+padding[1]+padding[3]+margin);
		
	scr_gui_draw_roundrect_flex(scr_gui(xPos,"x")-outlineWidth,
								scr_gui(yPos,"y")+(i*boxTotalHeight)-outlineWidth,
								txtLength+(outlineWidth*2), txtHeight+(outlineWidth*2), padding, c_black, c_black, true, false);
	scr_gui_draw_roundrect_flex(scr_gui(xPos,"x"),
								scr_gui(yPos,"y")+(i*boxTotalHeight),
								txtLength, txtHeight, padding, c_gray, c_gray, true, false);
									
	draw_text(scr_gui(xPos,"x")+padding[0], scr_gui(yPos,"y")+(txtHeight/2)+padding[1]+(i*boxTotalHeight), txt);
}