///Hit by player
if (get_damage == 1)
{
    if (instance_exists(obj_plr_attack_parent))
    {
        with (obj_plr_attack_parent) instance_destroy();
    }
    def = def - 1;
    get_damage = 0;
    alarm[0] = 20;
    scr_enemy_die();
}

