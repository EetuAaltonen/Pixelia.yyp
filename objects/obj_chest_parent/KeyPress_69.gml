if (opened) {	
	opened = false;
	image_index = 0;
	ds_list_clear(global.tempLoot);
	global.hudState = "null";
	alarm[1] = 20;
}