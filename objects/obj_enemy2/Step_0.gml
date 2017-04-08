//Pause
if(global.pause=1)
    {hspeed=0
    vspeed=0
    image_speed=0
    exit};
    
//Folloving
if hspeed > 0 {image_xscale=1}
if hspeed < 0 {image_xscale=-1}
if (distance_to_object(obj_player) > 100)
    {
        image_speed = 0;
        hspeed = 0;
        vspeed = 0;
    }
else if (distance_to_object(obj_player) < 100)
    {
        dir = sign(obj_player.x - x);
        hspeed = dir * 1;
        vspeed = 0;
        image_speed = 0.5;
    }

//Horizontal Collision
if (place_meeting(round(x+hspeed),round(y),obj_maa))
{
    while(!place_meeting(round(x+sign(hspeed)),round(y),obj_maa)) x += sign(hspeed);
    hspeed = 0;
}
x += hspeed;

//Vertical Collision
if (place_meeting(round(x),round(y+vspeed),obj_maa))
{
    while(!place_meeting(round(x),round(y+sign(vspeed)),obj_maa)) y += sign(vspeed);
    vspeed = 0;
}
y += vspeed;

//Gravity
if place_free(x,y+1)
    {
    gravity=5
    }
    else
    {
    gravity=0
    }

