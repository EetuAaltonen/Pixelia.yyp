///Draw text
draw_self();
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x + (sprite_width/2), y + (sprite_height/2), string_hash_to_newline(text));

///Selected
if (hudState == global.hudState)
{
    var imageBlend = 100;
    image_blend = make_colour_hsv(0, 0, imageBlend);
}
else
{
    image_blend = make_colour_hsv(0, 0, -1);
}

