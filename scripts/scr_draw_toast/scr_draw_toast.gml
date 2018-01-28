//Font
draw_set_font(fnt_draw_gui_inventory);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

if (drawToast) {
	var margin = (5*2)*global.resWAspect;
    var bgWidth = ((string_width(toastMessage)+margin)*(-1));
    draw_sprite_ext(spr_toaster_bg,0,scr_gui(490,"x"), scr_gui(260+toastYPos,"y"),
                    bgWidth,1*global.resWAspect,image_angle,c_black,toastAlpha);
    draw_text_colour(scr_gui(485,"x"), scr_gui(260+toastYPos,"y"), string(toastMessage),
                    c_white, c_white, c_white, c_white, toastAlpha);
}