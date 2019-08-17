if (instance_exists(obj_player)) {
	var player = obj_player;
	if (self == obj_player) {
		player = self;
	}
    player.hspeed = 0;
    player.sprite_index = spr_player;
    player.solid = true;
    player.mask_index = spr_player;
	player.highlight = false;
    player.actionState = Actions.Null;
}
