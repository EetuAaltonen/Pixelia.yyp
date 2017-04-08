draw_sprite_ext(spr_inv_item_description_bg, image_index, __view_get( e__VW.XView, 0 )+425, __view_get( e__VW.YView, 0 )+13,
                image_xscale, image_yscale, image_angle, c_white, image_alpha);

//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(__view_get( e__VW.XView, 0 )+360, __view_get( e__VW.YView, 0 )+13, string_hash_to_newline(string(global.quest)));

