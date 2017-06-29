///Set hud state null
if (instance_exists(obj_recipe_book)) {
	if (!obj_recipe_book.showRecipeBook) {
		global.hudState = "null";
		if (instance_exists(obj_player)) {
			obj_player.action_state = "null";
		}
	}
} else {
	global.hudState = "null";
	if (instance_exists(obj_player)) {
		obj_player.action_state = "null";
	}
}