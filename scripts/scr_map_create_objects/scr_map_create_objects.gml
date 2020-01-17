var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

if (!instance_exists(obj_map_cargo_cart)) {
	var objects = [
		//[X, Y, Destination, Sprite Index, Info Text]
		[50, 50, Cave_1, spr_map_castle, "Cave"],
		[250, 140, Village_1, spr_map_castle, "Village"],
		[420, 250, Forest_1, spr_map_castle, "Forest"]
	]
	var i;
	var object;
	var arraySize = array_length_1d(objects);
	for (i = 0; i < arraySize; i++) {
		object = objects[i];
		instance_create(viewX+object[0], viewY+object[1], obj_map_object);
		(instance_nearest(viewX+object[0], viewY+object[1], obj_map_object)).depth = (depth-1);
		(instance_nearest(viewX+object[0], viewY+object[1], obj_map_object)).destination = object[2];
		(instance_nearest(viewX+object[0], viewY+object[1], obj_map_object)).sprite_index = object[3];
		(instance_nearest(viewX+object[0], viewY+object[1], obj_map_object)).infoText = object[4];
	}
	instance_create(viewX, viewY, obj_map_grid);
	instance_create(viewX, viewY, obj_map_cargo_cart);
	/*instance_create(viewX+250, viewY+100, obj_map_mountain);
	instance_create(viewX+280, viewY+110, obj_map_mountain);
	instance_create(viewX+310, viewY+120, obj_map_mountain);
	instance_create(viewX+400, viewY+90, obj_map_forest);
	instance_create(viewX+400, viewY+200, obj_map_castle);
	instance_create(viewX+50, viewY+50, obj_map_castle);
	instance_create(viewX+200, viewY+200, obj_map_castle);
	instance_create(viewX+400, viewY+50, obj_map_castle);
	*/
}