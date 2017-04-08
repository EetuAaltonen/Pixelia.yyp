if (global.pause_draw = 1)
{
    draw_set_halign(fa_center);
    draw_set_color(c_black);
    draw_set_alpha(1);
    draw_text(obj_player.x,obj_player.y-90,string_hash_to_newline("Game Paused"));
    // draw_set_color(c_black);
}
else
{
}

