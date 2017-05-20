if (global.damage == 1)
{
    global.healthPoints -= str;
    scr_got_damage();
}
else
{
    global.pause = 0;
    global.pause_draw = 0;
}

