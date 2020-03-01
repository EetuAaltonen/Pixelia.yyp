camera_set_view_size(view, viewWidth, viewHeight);

if (instance_exists(obj_player)) {
	var player = obj_player;
	cameraX = clamp(player.x - (viewWidth / 2), 0, room_width - viewWidth);
	cameraY = clamp(player.y - (viewHeight / 2), 0, room_height - viewHeight);
	
	var curX = camera_get_view_x(view);
	var curY = camera_get_view_y(view);
	
	camera_set_view_pos(
		view,
		lerp(curX, cameraX, cameraSpeed),
		lerp(curY, cameraY, cameraSpeed)
	);
} else {
	cameraX = room_width / 2;
	cameraY = room_height / 2;
	camera_set_view_pos(view, cameraX, cameraY);
}