if (instance_exists(obj_map_object)) {
	with (obj_map_object) instance_destroy();
}
if (instance_exists(obj_map_block)) {
	with (obj_map_block) instance_destroy();
}
if (instance_exists(obj_map_grid)) {
	mp_grid_destroy(obj_map_grid.grid);
	with (obj_map_grid) instance_destroy();
}
if (instance_exists(obj_map_cargo_cart)) {
	with (obj_map_cargo_cart) instance_destroy();
}
scr_global_hud_state_reset();