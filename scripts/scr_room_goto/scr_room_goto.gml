var targetRoom = argument0;

global.previousRoom = room;
if (instance_exists(obj_player)) {
	global.playerHeading = obj_player.image_xscale;
}

//Start Changing Room
obj_screen_controller.targetRoom = targetRoom;