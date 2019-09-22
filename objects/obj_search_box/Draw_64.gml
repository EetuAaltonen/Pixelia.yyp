var textPosX = scr_position_to_gui(x+(sprite_width/2), "x");
var textPosY = scr_position_to_gui(y+(sprite_height/2), "y");

//Font
draw_set_font(fnt_draw_gui_small);
draw_set_color(c_black);
if (txt == place_holder) {
    draw_set_color(c_gray);
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

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