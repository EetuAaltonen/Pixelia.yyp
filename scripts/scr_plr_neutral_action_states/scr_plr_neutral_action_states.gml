if (instance_exists(obj_player)) {	
	var player = obj_player;
	if (self == obj_player) {
		player = self;
	}
	
	return (player.actionState == Actions.Null ||
			/*player.actionState == Actions.Jump ||
			player.actionState == Actions.Fall ||*/
			player.actionState == Actions.Crouch);
}
return false;