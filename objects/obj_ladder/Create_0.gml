image_speed = 0;
depth_ = depth;
if(place_meeting(x,y-sprite_height,object_index) && place_meeting(x,y+sprite_height,object_index)) {
    image_index = 3;
} else if(place_meeting(x,y+sprite_height,object_index)) {
    image_index = 2;
} else if (place_meeting(x,y-sprite_height,object_index)) {
    image_index = 1;
} else {
    image_index = 0;
}

