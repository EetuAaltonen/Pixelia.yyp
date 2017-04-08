if (global.hudState != "inventory1")
{
    if (instance_exists(obj_button_decrease))
    {
        with (obj_button_decrease) instance_destroy();
    }
    if (instance_exists(obj_button_increase))
    {
        with (obj_button_increase) instance_destroy();
    }
    instance_destroy();
}

