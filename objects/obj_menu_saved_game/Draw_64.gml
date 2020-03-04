//Font
draw_set_font(fnt_draw_gui_small);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var xPos = scr_pos_to_gui(x, Dim.X);
var yPos = scr_pos_to_gui(y, Dim.Y);
var padding = scr_gui_grid(2, Grid.Row, false);

draw_text(xPos + padding, yPos, string(load_file) + " " + string(Datetime));