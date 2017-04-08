//Confirm purchase
if (keyboard_check(ord("E")) and i < 3)
{
    alarm[2] = 10;
    i += 1;
}
else if (i == 3)
{
    i = 0;
    global.coins -= price;
    ini_open("Save.sav");
    ini_write_string("Save1",Id,"sold");
    State = "sold";
    obj_player.action_state = "null";
    ini_close();
}
else
{
    i = 0;
    obj_player.action_state = "null";
}

