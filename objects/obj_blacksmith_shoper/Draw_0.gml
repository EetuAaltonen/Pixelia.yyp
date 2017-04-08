draw_self();
scr_highlight_self();

draw_self();

if(distance_to_object(obj_player) < 35)
{
    if (image_xscale == 1)
    {
        draw_sprite(spr_talk, 1, x+5, y-17);
    }
    else if(image_xscale == -1)
    {
        draw_sprite(spr_talk, 1, x-5, y-17);
    }
}

