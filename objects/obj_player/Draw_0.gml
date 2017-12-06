///Draw action state
draw_self();
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(x, y-30, string_hash_to_newline(string(actionState)));