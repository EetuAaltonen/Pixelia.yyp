///Gravity
scr_custom_gravity();

///Image x_scale
if (hspeed > 0)
{
    image_xscale = 1;
}
else if (hspeed < 0)
{
    image_xscale = -1;
}

if (hspeed != 0)
{
    image_speed = 0.2;
}
else
{
    image_speed = 0;
}

///Jump
if (hspeed > 0 and place_meeting(x+10, y, obj_grass) //!place_free(x+10, y)
    and !place_free(x, y+3))
{
    jump = true;
    alarm[1] = 20; //Jump --> false
    vspeed = -5;
    if (hspeed > 0)
    {
        hspeed = 2;   
    }
    else
    {
       hspeed = -2;  
    }
}

