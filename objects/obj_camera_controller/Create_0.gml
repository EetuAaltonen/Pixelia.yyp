view = view_camera[0];
viewWidth = 0;
viewHeight = 0;

cameraX = 0;
cameraY = 0;
cameraSpeed = 0.1;

view = camera_create();
var viewmat = matrix_build_lookat(640, 240, -10, 640, 240, 0, 0, 1, 0);
var projmat = matrix_build_projection_ortho(640, 480, 1.0, 32000.0);
camera_set_view_mat(view, viewmat);
camera_set_proj_mat(view, projmat);

/*camera = camera_create();

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(540, 360, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

followTarget = undefined;
movingToX = x;
movingToY = y;
smoothing = 25;