/// @description ???
/// @return void

bobberRotateTimer += (delta_time*0.000001)*room_speed;
if (bobberRotateTimer >= bobberRotateSpeed) {
	bobberRotateTimer -= bobberRotateSpeed;
	imageAngle += (bobberRotateSteps * bobberRotateDirection);
	
	if (abs(imageAngle) > bobberMaxAngle) {
		imageAngle = (bobberMaxAngle * bobberRotateDirection);
		bobberRotateDirection *= -1;	
	}
}