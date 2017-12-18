if (actionState == "null") {
	image_index = 0;
}

if (hspeed > acceleration*global.delta) {
    hspeed -= acceleration*global.delta;
}
if (hspeed < -acceleration*global.delta) {
    hspeed += acceleration*global.delta;
}
if (hspeed < (acceleration + 0.1)*global.delta and hspeed > -(acceleration + 0.1)*global.delta) {
    hspeed = 0;
}