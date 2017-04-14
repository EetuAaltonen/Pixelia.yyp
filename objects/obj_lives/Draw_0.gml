///Draw armor info
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
if (instance_exists(obj_player))
{
    draw_sprite(sprite_index, image_index, viewX+4, viewY+3);
    draw_sprite(spr_armor, image_index, viewX+105, viewY+3);
    
    //Font
    draw_set_font(fnt_armor_text);
	if (global.armor > ((global.maxArmor + global.armorPlus)*0.75))
    {
        draw_set_color(c_white);
    }
    else if (global.armor > ((global.maxArmor + global.armorPlus)*0.5))
    {
        draw_set_color(c_yellow);
    }
	else if (global.armor > ((global.maxArmor + global.armorPlus)*0.25))
    {
        draw_set_color(c_orange);
    }
    else
    {
        draw_set_color(c_red);
    }
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text(viewX+117, viewY+14, string(global.armor));// + "\n" + string(global.maxArmor));
}


