var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var hudAction = argument0;
var slots;

switch (hudAction) {
	//case HudActions.SpinningWheel: {
    //    xPos = [/*300, 340, 300,*/ 340/*, 300, 340*/];
	//	yPos = [/*120, 120, 150,*/ 150/*, 180, 180*/];
	//}break;
	//case HudActions.WaterWell: {
    //    xPos = [/*300, 340, 300,*/ 340/*, 300, 340*/];
	//	yPos = [/*120, 120, 150,*/ 150/*, 180, 180*/];
	//}break;
	default: {
		slots = [
			[350, 120], [390, 120],
			[350, 150], [390, 150],
			[350, 180], [390, 180],
			[480, 150]
		];
	}break;
}

var slotCount = array_length_1d(slots);
// Output slot
pos = slots[(slotCount - 1)];
var outputSlot = instance_create(viewX + pos[0], viewY + pos[1], obj_crafting_slot);
outputSlot.index = -1;
outputSlot.outputSlot = outputSlot;


var i, pos, instance;
for (i = 0; i < (slotCount - 1); i++) {
	pos = slots[i];
	instance = instance_create(viewX + pos[0], viewY + pos[1], obj_crafting_slot);
	instance.index = i;
	instance.outputSlot = outputSlot;
}