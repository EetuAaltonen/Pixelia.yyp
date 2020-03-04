var xPos = scr_pos_to_gui(x, Dim.X);
var yPos = scr_pos_to_gui(y, Dim.Y);

var textPosX = scr_pos_to_gui(x + (sprite_width / 2), Dim.X);
var textPosY = scr_pos_to_gui(y + (sprite_height / 2), Dim.Y);

draw_sprite_ext(
	sprite_index, 0,
	xPos, yPos,
	GameGuiRatio, GameGuiRatio,
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