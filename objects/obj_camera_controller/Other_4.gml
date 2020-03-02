var cameraX = 0;
var cameraY = 0;
var camera = view_camera[0];

if (room != Menu) {
	if (instance_exists(obj_player)) {
		cameraTarget = obj_player;
		cameraX = cameraTarget.x;
		cameraY = cameraTarget.y;
	}
}
camera_set_view_pos(camera, cameraX, cameraY);