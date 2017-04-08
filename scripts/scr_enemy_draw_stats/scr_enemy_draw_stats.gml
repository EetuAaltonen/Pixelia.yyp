//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var view_ypos = 13;

if (instance_exists(obj_player))
{
    if (distance_to_object(obj_player) < 60)
    {
        if (draw_state == false)
        {
            if (global.enemy_stats1 == 0)
            {
                global.enemy_stats1 = 1;
                draw_state = global.enemy_stats1;
            }
            else if (global.enemy_stats2 == 0)
            {
                global.enemy_stats2 = 2;
                draw_state = global.enemy_stats2;
            }
            else if (global.enemy_stats3 == 0)
            {
                global.enemy_stats3 = 3;
                draw_state = global.enemy_stats3;
            }
            view_yview_stats = (view_ypos * (draw_state - 1)) + 3;
        }
        else
        {
            //Draw stats background
            draw_sprite_ext(spr_enemies_stats, image_index, __view_get( e__VW.XView, 0 )+132,
                        view_yview_stats, image_xscale, image_yscale, 
                        image_angle, c_white, 0.7);
                        
            //Draw stats name bg
            draw_sprite(spr_ene_name_bg, image_index, __view_get( e__VW.XView, 0 )+135,
                        view_yview_stats + 2);
            //Draw stats name
            scr_draw_in_language(show_name, __view_get( e__VW.XView, 0 )+140, view_yview_stats + 7, 1);
            
            //Draw strength
            var str_draw;
            str_draw = str;
            var c_color = c_white;
            if (str > 1)
            {
                c_color = c_yellow;       
            }
            draw_text_color(__view_get( e__VW.XView, 0 )+180, view_yview_stats + 7, string_hash_to_newline("S:"),
            c_color, c_color, c_color, c_color, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+194, view_yview_stats + 7, string_hash_to_newline(string(str)),
            c_color, c_color, c_color, c_color, 1);
            
            //Draw defence
            c_color = c_white;
            if (def > 1)
            {
                c_color = c_yellow;       
            }
            draw_text_color(__view_get( e__VW.XView, 0 )+208, view_yview_stats + 7, string_hash_to_newline("D:"),
            c_color, c_color, c_color, c_color, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+222, view_yview_stats + 7, string_hash_to_newline(string(def)),
            c_color, c_color, c_color, c_color, 1);
            
            //Draw magic
            c_color = c_white;
            if (mag > 1)
            {
                c_color = c_yellow; 
            }
            draw_text_color(__view_get( e__VW.XView, 0 )+236, view_yview_stats + 7, string_hash_to_newline("M:"),
            c_color, c_color, c_color, c_color, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+254, view_yview_stats + 7, string_hash_to_newline(string(mag)),
            c_color, c_color, c_color, c_color, 1);
        }
    }
    else if (draw_state != false) 
    {
        depth = -100;
        scr_reset_draw_state();
        draw_state = false;
    }
}
else
{
    scr_reset_draw_state();
    draw_state = false;
}
