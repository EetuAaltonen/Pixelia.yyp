if (draw_toast) {
    var margin = ((string_width(string_hash_to_newline(toast))/2)*(-1));
    var bgWidth = (string_width(string_hash_to_newline(toast)) + 10);
    draw_sprite_ext(spr_toaster_bg,0,viewX+480+margin-(bgWidth/2),
                    viewY+260+toast_y_pos,
                    bgWidth,1,image_angle,c_black,toast_alpha/1.5);
    draw_text_colour(viewX+480+margin, viewY+260+toast_y_pos, string(toast),
                    c_white, c_white, c_white, c_white, toast_alpha);
}