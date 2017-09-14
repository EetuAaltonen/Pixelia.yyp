if (alpha > 0) {   
    alpha -= 0.1;
    alarm[2] = transition_speed;
} else {
    obj_player.action_state = "null";
}

