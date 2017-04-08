draw_self();
draw_set_blend_mode(bm_zero);
draw_set_alpha(0.2);
draw_circle_color(x, y - 10, size, c_orange, c_black, false);
draw_set_blend_mode(bm_normal);
draw_set_alpha(1);

