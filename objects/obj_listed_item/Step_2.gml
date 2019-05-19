//Check if selected
if (selected && instance_exists(obj_crafting_slot)) {
	image_alpha = 0.5;
} else {
	image_alpha = 1;
	selected = false;	
}