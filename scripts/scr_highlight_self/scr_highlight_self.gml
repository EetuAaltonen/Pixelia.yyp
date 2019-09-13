if (instance_exists(obj_player)) {
    if (global.hudState == HudStates.Null) {
        if (distance_to_object(obj_player) <= 5) {
            if (y - obj_player.y <= 10 && y - obj_player.y >= -10 ||
                distance_to_object(obj_player) < 1) {
                if ((x > obj_player.x && obj_player.image_xscale == 1) ||
                    (x < obj_player.x && obj_player.image_xscale == -1)) {
                    if (!obj_player.highlight) {
                        image_blend = make_colour_hsv(0, 0, 150);
                        //depth = obj_player.depth - 1;
                        obj_player.highlight = true;
                    } else if (obj_player.highlight &&
						image_blend = make_colour_hsv(0, 0, 150)) {
                        draw_sprite(spr_E,1,obj_player.x,obj_player.y-20);
                    }
                } else {
                    scr_highlight_remove();
                }
            } else {
                scr_highlight_remove();
            }
        } else {
            scr_highlight_remove();
        }
    } else {
        scr_highlight_remove();
    }
}
