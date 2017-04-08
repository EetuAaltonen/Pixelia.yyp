///Draw armor info
if (instance_exists(obj_player))
{
    draw_sprite(sprite_index, image_index, __view_get( e__VW.XView, 0 )+4, __view_get( e__VW.YView, 0 )+3);
    draw_sprite(spr_armor, image_index, __view_get( e__VW.XView, 0 )+105, __view_get( e__VW.YView, 0 )+3);
    
    //Font
    draw_set_font(fnt_armor_text);
    if (global.armor > 0)
    {
        draw_set_color(c_yellow);
    }
    else
    {
        draw_set_color(c_red);
    }
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text(__view_get( e__VW.XView, 0 )+116, __view_get( e__VW.YView, 0 )+14, string_hash_to_newline(string(global.armor)));
}


