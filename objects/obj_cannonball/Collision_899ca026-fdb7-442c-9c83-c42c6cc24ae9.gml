gravity = 1;


if (hspeed <= 0 and first_hit == 0)
{
    hspeed = hspeed*-0.2;
    alarm[1] = 10;
    first_hit = 1;
}
else if (hspeed >= 0 and first_hit == 0)
{
    hspeed = hspeed*-0.2;
    alarm[1] = 10;
    first_hit = 1;
}

if (vspeed >= 1)
{
    vspeed = vspeed*-0.2;
}

if (!place_free(x+hspeed,y))
{
    if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
    if (hspeed>=0){move_contact_solid(0,abs(hspeed));}
    hspeed=0;
}
if (!place_free(x,y+vspeed))
{
    if (vspeed<0){move_contact_solid(90,abs(vspeed));}
    if (vspeed>0){move_contact_solid(270,abs(vspeed));djump=1}
    vspeed=0;
}

if (!place_free(x+hspeed,y+vspeed))
{
    hspeed=0;
}

