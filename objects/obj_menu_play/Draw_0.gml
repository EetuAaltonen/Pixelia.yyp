draw_self();
//Font
draw_set_font(fnt_menu_buttons);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, string_hash_to_newline("Play"));

//Logo
draw_sprite(spr_menu_logo, 1, __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2), __view_get( e__VW.YView, 0 ) + 48);
//Signature
draw_sprite(spr_menu_signature, 1, __view_get( e__VW.XView, 0 ) + 2, (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 10));

