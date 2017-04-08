///Mining
if (source > 0 && obj_player.action_state == "mining")
{
    //Hit
    scr_source_hit();
    source -= 1;
    alarm[0] = 50;
}
else
{
    image_blend = make_colour_hsv(0, 0, -1);
    obj_player.highlight = false;
    alarm[1] = 1000;
}

