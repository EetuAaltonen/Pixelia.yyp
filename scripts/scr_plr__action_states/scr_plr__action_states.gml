if (instance_exists(obj_player)) {	
	var player = obj_player;
	if (self == obj_player) {
		player = self;
	}
	
	if (player.actionState == "null" ||
		player.actionState == "jump" ||
		player.actionState == "crouch") {
		return true;
	}
}
return false;