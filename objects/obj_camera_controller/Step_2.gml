var camera = view_camera[0];

if (!is_undefined(cameraTarget)) {
	if (instance_exists(cameraTarget)) {
		var viewWidth = view_get_wport(0);
		var viewHeight = view_get_hport(0);

		var xPos = clamp(cameraTarget.x - (viewWidth / 2), 0, room_width - viewWidth);
		var yPos = clamp(cameraTarget.y - (viewHeight / 2), 0, room_height - viewHeight);

		var curX = camera_get_view_x(camera);
		var curY = camera_get_view_y(camera);
		
		if (global.hudState == HudStates.Null) {
			camera_set_view_pos(
				camera,
				lerp(curX, xPos, cameraSpeed),
				lerp(curY, yPos, cameraSpeed)
			);
		}
	}
} else {
	camera_set_view_pos(camera, 0, 0);	
}