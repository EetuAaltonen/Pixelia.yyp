draw_self();
if (instance_exists(obj_player)) {
    if (obj_player.actionState == Actions.Bow) {
        draw_text(obj_player.x, obj_player.y-70, string(arrowCount));
		draw_sprite(spr_aim, 0, mouse_x, mouse_y);
    }
}