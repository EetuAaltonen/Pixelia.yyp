var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
var viewXCenter = (viewX + viewWidth) / 2;
var viewYCenter = (viewY + viewHeight) / 2;

// Instance destroy
if (obj_player.actionState != Actions.Fishing) {
    instance_destroy();
}

// Bobber movement
if ((viewXCenter + bobberX) > (viewXCenter + (210/2)) && bobberDirection == 1) {
    bobberDirection = -1;
    bobberX -= 2;
    alarm[4] = bobberSpeed;
} else if ((viewXCenter+ bobberX) < (viewXCenter - (210/2)) && bobberDirection == -1) {
    bobberDirection = 1;
    bobberX += 2;
    alarm[4] = bobberSpeed;
}

// Bobber image angle
if (imageAngle > 15 &&
    bobberRotateDirection == 1) {
    imageAngle -= 1;
    bobberRotateDirection = -1;
    alarm[6] = bobberRotateSpeed;
} else if (imageAngle < -15 &&
    bobberRotateDirection == -1) {
    imageAngle += 1;
    bobberRotateDirection = 1;
    alarm[6] = bobberRotateSpeed;
}