global.pause = 0;
global.pause_draw = 0;
global.damage = 0;
global.hudState = HudStates.Null;
if (instance_exists(obj_player))
{
    obj_player.actionState = Actions.Null;
}
//Armor regeneration
if (instance_exists(obj_statistics_controller))
{
    obj_statistics_controller.alarm[1] = scr_time_sec_to_alarm(1/(global.armorRegenAmount+global.armorRegenAmount*global.armorRegenPlus));
}
obj_plr_hitbox.alarm[1] = 60;

//Blood
part_particles_create(global.ps, obj_plr_hitbox.x, obj_plr_hitbox.y, 
global.pt_Blood, random_range(5,10));
