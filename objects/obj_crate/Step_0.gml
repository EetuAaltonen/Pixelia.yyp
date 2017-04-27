//Left
var leftContact = place_meeting(x-(sprite_width/2), y+4+(sprite_height/2), obj_solidify_parent);
//Left Corner
var leftCorner = place_free(x-(sprite_width), y+2+(sprite_height/2));
//Left Side
var leftSide = place_free(x-2-sprite_width, y);

//Right
var rightContact = place_meeting(x+(sprite_width/2), y+4+(sprite_height/2), obj_solidify_parent);
//Right Corner
var rightCorner = place_free(x+sprite_width, y+2+(sprite_height/2));
//Right Side
var rightSide = place_free(x+2+sprite_width, y);

if (!fallingLeft && !fallingRight) {
	if (!leftContact && rightContact) {
		if (leftCorner && leftSide) {
			fallingLeft = true;
			hspeed = -1;
			alarm[1] = 2;
		}
	} else if (!rightContact && leftContact) {
		if (rightCorner && rightSide) {
			fallingRight = true;
			hspeed = 1;
			alarm[1] = 2;
		}
	} else {
		image_angle = 0;
	}
} else {
	if (hspeed == 0) {
		fallingLeft = false;
		fallingRight = false;
		image_angle = 0;
	}
}