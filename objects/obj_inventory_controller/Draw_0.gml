///Inventory
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == "inventory1")
{
    scr_list_items();
}
else if (global.hudState == "inventoryEquipments")
{
    scr_list_items();
}
else if (global.hudState == "inventory2")
{
    //Background
    draw_sprite(spr_inventory_background, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    scr_st_draw_info();
    scr_st_create_skills();
}
else if(global.hudState == "inventory3")
{
    //Background
    draw_sprite(spr_inventory_background, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    //Icon
    draw_sprite(spr_death_counter, 0, __view_get( e__VW.XView, 0 )+30, __view_get( e__VW.YView, 0 )+120);
    //Death counter
    draw_text(__view_get( e__VW.XView, 0 )+50,__view_get( e__VW.YView, 0 )+112, string_hash_to_newline(string(global.death_counter)));
    
    //Icon
    draw_sprite(spr_kill_counter, 0, __view_get( e__VW.XView, 0 )+30, __view_get( e__VW.YView, 0 )+150);
    //Kill counter
    draw_text(__view_get( e__VW.XView, 0 )+50,__view_get( e__VW.YView, 0 )+143, string_hash_to_newline(string(global.kill_counter)));
    
    //Home village stats
    //Icon
    draw_sprite(spr_home_happiness, 0, __view_get( e__VW.XView, 0 )+230, __view_get( e__VW.YView, 0 )+120);
    //Happiness
    draw_text(__view_get( e__VW.XView, 0 )+250,__view_get( e__VW.YView, 0 )+112, string_hash_to_newline(string(global.home_happiness)));
            
    //Icon
    draw_sprite(spr_home_defence, 0, __view_get( e__VW.XView, 0 )+230, __view_get( e__VW.YView, 0 )+150);
    //Defence
    draw_text(__view_get( e__VW.XView, 0 )+250,__view_get( e__VW.YView, 0 )+143, string_hash_to_newline(string(global.home_defence)));
    
    //Icon
    draw_sprite(spr_home_hunger, 0, __view_get( e__VW.XView, 0 )+230, __view_get( e__VW.YView, 0 )+180);
    //Hunger
    draw_text(__view_get( e__VW.XView, 0 )+250,__view_get( e__VW.YView, 0 )+174, string_hash_to_newline(string(global.home_hunger)));
    
    //Icon
    draw_sprite(spr_home_thirst, 0, __view_get( e__VW.XView, 0 )+230, __view_get( e__VW.YView, 0 )+210);
    //Thirst
    draw_text(__view_get( e__VW.XView, 0 )+250,__view_get( e__VW.YView, 0 )+205, string_hash_to_newline(string(global.home_thirst)));
}

///Shop
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == "shop")
{
    scr_list_items();
}

///Draw toast
//Font
draw_set_font(fnt_toaster);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (draw_toast)
{
    if (global.hudState == "null")
    {
        var margin = ((string_width(string_hash_to_newline(toast))/2)*(-1));
        var bgWidth = (string_width(string_hash_to_newline(toast)) + 10);
        draw_sprite_ext(spr_toaster_bg,0,__view_get( e__VW.XView, 0 )+480+margin-(bgWidth/2),
                        __view_get( e__VW.YView, 0 )+260+toast_y_pos,
                        bgWidth,1,image_angle,c_black,toast_alpha/1.5);
        draw_text_colour(__view_get( e__VW.XView, 0 )+480+margin, __view_get( e__VW.YView, 0 )+260+toast_y_pos, string_hash_to_newline(toast),
                        c_white, c_white, c_white, c_white, toast_alpha);
    }
}

///Hotbar background
draw_sprite_ext(spr_hotbar_bg, image_index, __view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+270,
                image_xscale, image_yscale, image_angle, c_white, image_alpha);

///Level, Coins, Potions
//Font
draw_set_font(fnt_hotbar_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Level
draw_text(__view_get( e__VW.XView, 0 )+180,__view_get( e__VW.YView, 0 )+286, string_hash_to_newline("Level    " + string(global.level)));
//XP
draw_text(__view_get( e__VW.XView, 0 )+270,__view_get( e__VW.YView, 0 )+286, string_hash_to_newline("XP    " + string(global.xp) + "  /  " + string(global.xp_limit)));

//Coins
draw_text(__view_get( e__VW.XView, 0 )+443,__view_get( e__VW.YView, 0 )+286, string_hash_to_newline(string(global.coins)));
//Coin logo
draw_sprite_ext(spr_money_icon, image_index, __view_get( e__VW.XView, 0 )+425, 
                __view_get( e__VW.YView, 0 )+286, image_scale_coin, image_scale_coin, 
                image_angle, c_white, image_alpha);                
//Potions
draw_text(__view_get( e__VW.XView, 0 )+384,__view_get( e__VW.YView, 0 )+286, string_hash_to_newline(string(global.potions)));
                
//Potion logo
draw_sprite_ext(spr_potion_icon, image_index, __view_get( e__VW.XView, 0 )+372, 
                __view_get( e__VW.YView, 0 )+286, image_scale_potion, image_scale_potion, 
                image_angle, c_white, image_alpha);

