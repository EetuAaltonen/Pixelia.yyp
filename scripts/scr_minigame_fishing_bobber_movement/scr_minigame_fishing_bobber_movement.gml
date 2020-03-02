/// @description ???
/// @param s - ???
/// @return void -

var viewWCenter = GuiWidth / 2;

bobberMoveTimer += (delta_time*0.000001)*room_speed;
if (bobberMoveTimer >= bobberSpeed) {
	bobberMoveTimer -= bobberSpeed;
	bobberX += (bobberSteps * bobberDirection);
	
	if (viewWCenter + abs(bobberX) > viewWCenter + (bobberAreaWidth / 2)) {
		bobberX = ((bobberAreaWidth / 2) * bobberDirection);
		bobberDirection *= -1;
	}
}