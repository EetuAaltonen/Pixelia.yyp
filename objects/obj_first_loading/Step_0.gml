///Create needed objects in first loading
if (load == false)
{ 
    scr_first_loading_screen_objects();
    var object;
    var arrayLength = array_length_1d(Object)
    for(i = 1; i > 0; i++)
    {
        if (i == arrayLength)
        {
            break;
        }
        else
        {
            object = Object[i];
            instance_create(x-100, y-100, object);
        }
    }
    //Check unlocked skills
    scr_check_unlocked_skills();
    alarm[1] = 50;
    
    load = true;
}

