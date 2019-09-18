var positionX = scr_draw_position_on_screen(x+(sprite_width/2), "x");
var positionY = scr_draw_position_on_screen(y+(sprite_height/2), "y");
var textPosX = scr_draw_camera_position_to_gui(positionX, "x");
var textPosY = scr_draw_camera_position_to_gui(positionY, "y");

//Font
draw_set_font(fnt_draw_gui_inv_small /*fnt_draw_gui_search_box_text*/);
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