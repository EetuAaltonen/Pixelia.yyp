draw_self();
//Font
draw_set_font(fnt_menu_buttons);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, string_hash_to_newline("Quit"));

