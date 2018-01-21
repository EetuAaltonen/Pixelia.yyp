draw_self();
scr_draw_in_language(letter, x, y, text_scale);

draw_set_blend_mode(bm_zero);
draw_set_alpha(0.2);
draw_circle_color(x, y, size, c_color, c_black, false);
draw_set_blend_mode(bm_normal);
draw_set_alpha(1);