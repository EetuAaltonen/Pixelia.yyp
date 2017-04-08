//Font
draw_set_font(fnt_loading);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(__view_get( e__VW.XView, 0 )+150, __view_get( e__VW.YView, 0 )+130, string_hash_to_newline("Loading..."));

