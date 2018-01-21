var viewX = view_get_xport(0);
var viewY = view_get_yport(0);
var viewWidth = view_get_wport(0);
var viewHeight = view_get_hport(0);

//Font
draw_set_font(fnt_draw_gui_test);
draw_set_color(c_black);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

draw_text(viewX+viewWidth*0.99, viewY+viewHeight*0.5, "Testi tekstiä");
draw_text(viewX+viewWidth*0.99, viewY+viewHeight*0.55, string(viewWidth*0.99) + " : " + string(viewHeight*0.5));