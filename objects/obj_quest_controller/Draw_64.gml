//Font
draw_set_font(fnt_draw_gui_inventory);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(scr_gui(360, "x"), scr_gui(14, "y"), string_hash_to_newline(global.quest));