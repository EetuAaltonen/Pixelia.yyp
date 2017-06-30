draw_self();
//Font
draw_set_font(textFont);
draw_set_color(textColor);
draw_set_halign(textHAlign);
draw_set_valign(fa_middle);

image_xscale = string_width(text);
draw_text_color(x, y, text, textColor, textColor, textColor, textColor, 1);