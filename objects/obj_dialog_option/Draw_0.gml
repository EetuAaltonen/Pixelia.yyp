///Draw dialog option
draw_self();
//Font
draw_set_font(fnt_dialog);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

image_xscale = string_width(string_hash_to_newline(option));
draw_text_colour(x, y, string_hash_to_newline(option), optionColor, optionColor, optionColor, optionColor, 1);

