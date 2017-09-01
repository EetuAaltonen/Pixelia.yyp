///Create needed objects in first loading
if (!load) { 
    var createObjects = ds_list_create();
	createObjects = scr_first_loading_screen_objects();
    var object;
    var listSize = ds_list_size(createObjects);
    for(var i = 0; i < listSize; i++) {
        object = ds_list_find_value(createObjects, i);
        instance_create(x-50, y-50, object);
    }
	ds_list_destroy(createObjects);
    //Check unlocked skills
    scr_check_unlocked_skills();
    alarm[1] = 50;
    
    load = true;
}