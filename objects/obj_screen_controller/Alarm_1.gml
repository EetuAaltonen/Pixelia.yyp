if (alpha < 1)
{   
    alpha += 0.1;
    alarm[1] = transition_speed;
}
else
{
    room_goto(target_room);
}

