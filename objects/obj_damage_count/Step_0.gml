if (y < (startY-50)) {
	//instance_destroy();
	//show_message((y-(startY-100))/(startY-100));
	textAlpha = ((y-(startY-100))/(startY-100));
}
if (textAlpha < 0.1) {
	instance_destroy();
}
/*if (y < (startY-20)) {
	image_alpha = 1 -((y/(startY-30))/10);
}