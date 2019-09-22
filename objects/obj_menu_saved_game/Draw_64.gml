var xPos = scr_position_to_gui(x, "x");
var yPos = scr_position_to_gui(y, "y");

//Font
draw_set_font(fnt_draw_gui_small);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(xPos, yPos, string(load_file) + " " + string(Datetime));