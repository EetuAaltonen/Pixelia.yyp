var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

//Font
draw_set_font(fnt_toaster);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

///Draw toast
if (draw_toast)
{
    var margin = ((string_width(string_hash_to_newline(toast))/2)*(-1));
    var bgWidth = (string_width(string_hash_to_newline(toast)) + 10);
    draw_sprite_ext(spr_toaster_bg,0,viewX+480+margin-(bgWidth/2),
                    viewY+260+toast_y_pos,
                    bgWidth,1,image_angle,c_black,toast_alpha/1.5);
    draw_text_colour(viewX+480+margin, viewY+260+toast_y_pos, string_hash_to_newline(toast),
                    c_white, c_white, c_white, c_white, toast_alpha);
}

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
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
    scr_st_draw_info();
    scr_st_create_skills();
}
else if(global.hudState == "inventory3")
{
    //Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
    //Icon
    draw_sprite(spr_death_counter, 0, viewX+30, viewY+120);
    //Death counter
    draw_text(viewX+50,viewY+112, string_hash_to_newline(string(global.death_counter)));
    
    //Icon
    draw_sprite(spr_kill_counter, 0, viewX+30, viewY+150);
    //Kill counter
    draw_text(viewX+50,viewY+143, string_hash_to_newline(string(global.kill_counter)));
    
    //Home village stats
    /*//Icon
    draw_sprite(spr_home_happiness, 0, viewX+230, viewY+120);
    //Happiness
    draw_text(viewX+250,viewY+112, string(global.home_happiness));
            
    //Icon
    draw_sprite(spr_home_defence, 0, viewX+230, viewY+150);
    //Defence
    draw_text(viewX+250,viewY+143, string(global.home_defence));
    
    //Icon
    draw_sprite(spr_home_hunger, 0, viewX+230, viewY+180);
    //Hunger
    draw_text(viewX+250,viewY+174, string(global.home_hunger));
    
    //Icon
    draw_sprite(spr_home_thirst, 0, viewX+230, viewY+210);
    //Thirst
    draw_text(viewX+250,viewY+205, string(global.home_thirst));*/
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

///Hotbar background
draw_sprite_ext(spr_hotbar_bg, image_index, viewX+0, viewY+270,
                image_xscale, image_yscale, image_angle, c_white, image_alpha);

///Level, Coins, Potions
//Font
draw_set_font(fnt_hotbar_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Level
draw_text(viewX+180,viewY+286, string_hash_to_newline("Level    " + string(global.level)));
//XP
draw_text(viewX+270,viewY+286, string_hash_to_newline("XP    " + string(global.xp) + "  /  " + string(global.xp_limit)));

//Coins
draw_text(viewX+443,viewY+286, string_hash_to_newline(string(global.coins)));
//Coin logo
draw_sprite_ext(spr_money_icon, image_index, viewX+425, 
                viewY+286, image_scale_coin, image_scale_coin, 
                image_angle, c_white, image_alpha);                
//Potions
draw_text(viewX+384,viewY+286, string_hash_to_newline(string(global.potions)));
                
//Potion logo
draw_sprite_ext(spr_potion_icon, image_index, viewX+372, 
                viewY+286, image_scale_potion, image_scale_potion, 
                image_angle, c_white, image_alpha);

