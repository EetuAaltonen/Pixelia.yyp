if (actionState == "null") {
	image_index = 0;
}
if (hspeed > acceleration) {
    hspeed -= acceleration*global.delta;
}
if (hspeed < -acceleration) {
    hspeed += acceleration*global.delta;
}
if (hspeed < (acceleration + 0.1) && hspeed > -(acceleration + 0.1)) {
    hspeed = 0;
}