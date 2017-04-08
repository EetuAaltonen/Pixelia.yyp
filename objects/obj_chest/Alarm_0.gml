if (drop <= value)
{
    instance_create(x,y-20,obj_coin_collected);
    drop += 1;
    alarm[0] = 10;
}
else
{
    alarm[1] = 20;
}

