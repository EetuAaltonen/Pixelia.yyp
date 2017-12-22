if (selected == false) {
    if (txt == place_holder) {
        keyboard_string = "";
    } else {
        keyboard_string = txt;
    }
    selected = true;
    alarm[1] = 1;
} else {
    keyboard_string = "";
    blink_icon = "";
    selected = false;
}


