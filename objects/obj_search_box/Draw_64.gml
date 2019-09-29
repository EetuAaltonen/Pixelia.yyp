var xPos = scr_position_to_gui(x, "x");
var yPos = scr_position_to_gui(y, "y");

var textPosX = scr_position_to_gui(x + (sprite_width / 2), "x");
var textPosY = scr_position_to_gui(y + (sprite_height / 2), "y");

draw_sprite_ext(
	sprite_index, 0,
	xPos, yPos,
	guiWRatio, guiHRatio,
	image_angle, c_white, 1
);

scr_draw_set_font(
	fnt_draw_gui_small,
	fa_center, fa_middle,
	c_black, 1
);

if (txt == place_holder) {
    draw_set_color(c_gray);
}

if (selected == false) {
    if (txt == "") {
        txt = place_holder;
    }
} else {
    if (txt == place_holder) {
        txt = "";
    }
}
draw_text(textPosX, textPosY, string(txt + blink_icon));