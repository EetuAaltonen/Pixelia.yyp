if (hspeed > 1)
{
    image_speed = 0.5;
}
else if (hspeed < -1)
{
    image_speed = -0.5;
}
else
{
    image_speed = 0;
}

if (hspeed == 0 and vspeed == 0)
{
    instance_destroy();
}

