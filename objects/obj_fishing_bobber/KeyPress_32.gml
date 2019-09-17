var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
var viewXCenter = (viewX + viewWidth) / 2;
var viewYCenter = (viewY + viewHeight) / 2;

if (instance_exists(obj_player)) {
	if (/*global.popUp != "fishingBeReady" &&*/catchFish) {
		///Stop bobber
		bobberSpeed = 0;
		if ((viewXCenter + bobberX) < viewXCenter + (area1Xscale/2) &&
		    (viewXCenter + bobberX) > viewXCenter - (area1Xscale/2)) {
		    catchChange = 1;
		    successText = "Great!";
		} else if ((viewXCenter + bobberX) < (viewXCenter + (area1Xscale/2*4)) &&
		        (viewXCenter + bobberX) > (viewXCenter - (area1Xscale/2*4))) {
		    catchChange = 0.5;
		    successText = "Nice!";
		} else {
		    catchChange = 0.02;
		    successText = "Fail!";
		}
		alarm[6] = -1;
		imageAngle = 0;
		alarm[5] = 100;
	}
}