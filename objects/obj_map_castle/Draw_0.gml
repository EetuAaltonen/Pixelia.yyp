draw_self();
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
if (image_index == 1)
{
    draw_text(x, y-20, string_hash_to_newline(string(x) + ", " + string(y)));
}

