var viewHeight = camera_get_view_height(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewHalfHeight = viewHeight/2;

var frameHalfHeight = (maxScale/2); //Sprite Height
var player = obj_player;
				
if (targetY == "null") {
	targetY = irandom_range(frameHalfHeight/4, (maxScale-targetHeight-10));
	targetY = targetY;
}

var side = player.image_xscale;
if (player.x + ((drawMargin*2)*side) > room_width || player.x + ((drawMargin*2)*side) < 0) {
	side *= -1;
}
//Frame Background
draw_sprite_ext(spr_minigame_woodcutting_frame, 1, player.x+(drawMargin*side),
				viewY+viewHalfHeight, 1, 1, image_angle, c_white, 1);
//Target
draw_sprite_ext(spr_minigame_woodcutting_force, 1, player.x+(drawMargin*side),
				viewY+viewHalfHeight+(frameHalfHeight-targetY), 1, (targetHeight*(-1)),
				image_angle, c_white, 1);
//Force
draw_sprite_ext(spr_minigame_woodcutting_force, 0, player.x+(drawMargin*side),
				viewY+viewHalfHeight+frameHalfHeight, 1, (forceScale*(-1)),
				image_angle, c_white, forceAlpha);
//Frame
draw_sprite_ext(spr_minigame_woodcutting_frame, 0, player.x+(drawMargin*side),
				viewY+viewHalfHeight, 1, 1, image_angle, c_white, 1);