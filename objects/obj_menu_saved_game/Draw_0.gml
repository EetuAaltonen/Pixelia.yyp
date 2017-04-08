draw_self();
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x + (sprite_width/2), y + (sprite_height/2), string_hash_to_newline(string(load_file) + " " + string(Datetime)));

