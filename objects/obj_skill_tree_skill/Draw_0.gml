///Draw price
if (sprite_index) {
    draw_self();
}
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x+(sprite_width/2)-1, y+(sprite_height)+5, string_hash_to_newline(string(price)));

///Unlocked
image_blend = make_colour_hsv(0, 0, image_blend_);