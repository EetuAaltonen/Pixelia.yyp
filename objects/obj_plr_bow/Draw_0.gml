draw_self();
if (instance_exists(obj_player))
{
    if (obj_player.action_state == "bow")
    {
        draw_text(obj_player.x, obj_player.y - 70, string_hash_to_newline(arrowCount));
    }
}

