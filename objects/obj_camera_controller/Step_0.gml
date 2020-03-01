/*if (!is_undefined(followTarget)) {
	movingToX = followTarget.x;
	x += (movingToX - x) / smoothing;
	
	movingToY = followTarget.y;
	y += (movingToY - y) / smoothing;
} else if (room == Menu) {
	x = room_width / 2;
	y = room_height / 2;	
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);