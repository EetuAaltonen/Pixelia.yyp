var target = effect[1];
if (instance_exists(target)) {
	target.image_blend = c_white;
	target.elementalEffect = "null";
}
instance_destroy();