draw_self();

draw_set_font(fnt_enemies_stats);

draw_sprite(spr_aim, 0, x +(20*image_xscale), y);
draw_sprite(spr_aim, 0, x +(15*image_xscale), y - 22);

if (!attack) {
	if (jump) {
		text = "Jump";
	} else {
		if (text == "Jump") {
			text = "";
		}
	}
}
if (instance_exists(obj_player)) {
	draw_text(x, y-10, text);
}

//Font
/*draw_set_font(fnt_enemies_stats);

if (distance_to_object(obj_player) < 60)
{
    
    if (global.enemy_stats1 == 0 and draw_state == false)
    {
        //State
        global.enemy_stats1 = 1;
        draw_state = global.enemy_stats1;
        depth = -4001;
    }
    else if (global.enemy_stats2 == 0 and draw_state == false)
    {
        //State
        global.enemy_stats2 = 2;
        draw_state = global.enemy_stats2;
        depth = -4001;
    }
    else if (global.enemy_stats3 == 0 and draw_state == false)
    {
        //State
        global.enemy_stats3 = 3;
        draw_state = global.enemy_stats3;
        depth = -4001;
    }
    else if (global.enemy_stats1 == draw_state)
    {
        //Draw stats background
        draw_sprite_ext(spr_enemies_stats, image_index, __view_get( e__VW.XView, 0 )+130,
                    __view_get( e__VW.YView, 0 )+3, image_xscale, image_yscale, 
                    image_angle, c_white, 0.7);
                    
        //Draw stats picture
        draw_sprite_ext(spr_pic_rat, image_index, __view_get( e__VW.XView, 0 )+145,
                    __view_get( e__VW.YView, 0 )+10, image_xscale, image_yscale, 
                    image_angle, c_white, image_alpha);
        
        //Draw strength
        var str_draw;
        str_draw = str;
        if (str > 1)
        {       
            draw_text_color(__view_get( e__VW.XView, 0 )+180, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline(string(str)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+165, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline("S:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+180, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline(string(str)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+165, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline("S: "),
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw defence
        var def_draw;
        def_draw = def;
        if (def > 1)
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+210, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline(string(def)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+195, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline("D:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+210, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline(string(def)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+195, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline("D:"),
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw magic
        var mag_draw;
        mag_draw = mag;    
        if (mag > 1)
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+240, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline(string(mag)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+225, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline("M:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+240, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline(string(mag)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+225, __view_get( e__VW.YView, 0 )+2, string_hash_to_newline("M:"),
            c_white, c_white, c_white, c_white, 1);
        }
    }
    else if (global.enemy_stats2 == draw_state)
    {
        //Draw stats background
        draw_sprite_ext(spr_enemies_stats, image_index, __view_get( e__VW.XView, 0 )+130,
                    __view_get( e__VW.YView, 0 )+17, image_xscale, image_yscale, 
                    image_angle, c_white, 0.7);
                    
        //Draw stats picture
        draw_sprite_ext(spr_pic_rat, image_index, __view_get( e__VW.XView, 0 )+145,
                    __view_get( e__VW.YView, 0 )+24, image_xscale, image_yscale, 
                    image_angle, c_white, image_alpha);
        
        //Draw strength
        var str_draw;
        str_draw = str;
        if (str > 1)
        {       
            draw_text_color(__view_get( e__VW.XView, 0 )+180, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline(string(str)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+165, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline("S:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+180, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline(string(str)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+165, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline("S:"),
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw defence
        var def_draw;
        def_draw = def;
        if (def > 1)
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+210, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline(string(def)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+195, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline("D:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+210, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline(string(def)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+195, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline("D:"),
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw magic
        var mag_draw;
        mag_draw = mag;    
        if (mag > 1)
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+240, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline(string(mag)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+225, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline("M:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
           draw_text_color(__view_get( e__VW.XView, 0 )+240, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline(string(mag)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+225, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline("M:"),
            c_white, c_white, c_white, c_white, 1);
        }
    }
    else if (global.enemy_stats3 == draw_state)
    {
        //Draw stats background
        draw_sprite_ext(spr_enemies_stats, image_index, __view_get( e__VW.XView, 0 )+130,
                    __view_get( e__VW.YView, 0 )+31, image_xscale, image_yscale, 
                    image_angle, c_white, 0.7);
                    
        //Draw stats picture
        draw_sprite_ext(spr_pic_rat, image_index, __view_get( e__VW.XView, 0 )+145,
                    __view_get( e__VW.YView, 0 )+38, image_xscale, image_yscale, 
                    image_angle, c_white, image_alpha);
        
        //Draw strength
        var str_draw;
        str_draw = str;
        if (str > 1)
        {       
            draw_text_color(__view_get( e__VW.XView, 0 )+180, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline(string(str)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+165, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline("S:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+180, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline(string(str)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+165, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline("S:"),
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw defence
        var def_draw;
        def_draw = def;
        if (def > 1)
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+210, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline(string(def)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+195, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline("D:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+210, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline(string(def)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+195, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline("D:"),
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw magic
        var mag_draw;
        mag_draw = mag;    
        if (mag > 1)
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+240, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline(string(mag)),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+225, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline("M:"),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(__view_get( e__VW.XView, 0 )+240, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline(string(mag)),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(__view_get( e__VW.XView, 0 )+225, __view_get( e__VW.YView, 0 )+30, string_hash_to_newline("M:"),
            c_white, c_white, c_white, c_white, 1);
        }
    }
    else
    {
        draw_state = false;
    }
}
else if (not draw_state == false) 
{
    depth = -100;
    if (draw_state == global.enemy_stats1)
    {
        global.enemy_stats1 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats2)
    {
        global.enemy_stats2 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats3)
    {
        global.enemy_stats3 = 0;
        draw_state = false;
    }
}

