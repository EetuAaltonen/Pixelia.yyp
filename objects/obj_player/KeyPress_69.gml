///@description Use
///Use
if (global.hudState == "null")
{
    if (action_state == "null" || action_state == "jump")
    {
        instance_create(x,y,obj_use);
    }
}


///Reset action state
if (action_state == "mining" ||
    action_state == "woodcutting" ||
    action_state == "sitting" ||
    action_state == "fishing")
{
    scr_plr_set_action_state_null();
}

