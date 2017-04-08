if (can_hurt == true)
{
    instance_create(x, y, obj_arrow_effect);
    speed = 0;
    alarm[1] = 200;
    can_hurt = false;
}
//instance_destroy();

