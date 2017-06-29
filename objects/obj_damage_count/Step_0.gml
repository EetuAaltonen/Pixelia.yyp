if (y < (startY-50)) {
	textAlpha = ((y-(startY-100))/(startY-100));
}
if (textAlpha < 0.1) {
	instance_destroy();
}