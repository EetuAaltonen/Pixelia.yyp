if (fallingLeft) {
	image_angle += 10;
} else if (fallingRight) {
	image_angle -= 10;
}

if (image_angle == 90 || image_angle == -90) {
	fallingLeft = false;
	fallingRight = false;
	image_angle = 0;
	hspeed = 0;
}

if (fallingLeft || fallingRight) {
	alarm[1] = 2;
}