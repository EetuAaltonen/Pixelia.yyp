draw_self();
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw_sprite(sprite_index, image_index, x, y);

if (selected == false)
{
    if (txt == "")
    {
        txt = place_holder;
    }
}
else
{
    if (txt == place_holder)
    {
        txt = "";
    }
}
draw_text(x, y, string_hash_to_newline(txt + blink_icon));

