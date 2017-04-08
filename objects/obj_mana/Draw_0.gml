///Draw mana bar
if (instance_exists(obj_player))
{
    draw_sprite(sprite_index, image_index, __view_get( e__VW.XView, 0 )+4, __view_get( e__VW.YView, 0 )+40,);
}

