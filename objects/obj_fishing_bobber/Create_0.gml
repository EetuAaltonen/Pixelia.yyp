depth = Depth.PlayerAction;
depth_ = depth;

fishSwarm = undefined;
if (instance_exists(obj_fish_swarm)) {
	fishSwarm = instance_nearest(x, y, obj_fish_swarm);
}
controller = obj_minigame_controller;