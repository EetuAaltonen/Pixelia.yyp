//Text box
max_width = 25;
selected = false;
txt = "";
txt_temp = "";
blink_icon = "";
blink_speed = 30;
place_holder = "File name...";
if (room != Menu)
{
    if (global.hudState == "inventory1")
    {
        place_holder = "Item name...";
    }
}
enabled_keys = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890";
//Menu state
menu_state = "load_game";


