/// @desc Toggle highlight
/// @return Void

var horizontalDiff = 50;
var verticalDiff = 20;
if (is_undefined(global.highlightedObject)) {
	if (global.hudState == HudStates.Null) {
		if (instance_exists(obj_player)) {
			var player = obj_player;
			if (!player.highlight) {
				if ((player.image_xscale == 1 && x > player.x && abs(x - player.x) <= horizontalDiff) ||
					(player.image_xscale == -1 && x <= player.x && abs(player.x - x) <= horizontalDiff)) {
					if ((y > player.y && abs(y - player.y) <= verticalDiff) ||
						(y <= player.y && abs(player.y - y) <= verticalDiff)) {
		                image_blend = scr_highlight_value();
		                // TODO: Logic if dropped item is behind everything else
						// depth = Depth.Highlight;
		                obj_player.highlight = true;
						global.highlightedObject = id;
					}
				}
			}
		}
	}
} else if (scr_highlighted()) {
	if (global.hudState == HudStates.Null) {
		if (instance_exists(obj_player)) {
			var player = obj_player;
			if (player.highlight) {
				if ((player.image_xscale == 1 && x > player.x && abs(x - player.x) <= horizontalDiff) ||
					(player.image_xscale == -1 && x <= player.x && abs(player.x - x) <= horizontalDiff)) {
					if ((y > player.y && abs(y - player.y) > verticalDiff) ||
						(y <= player.y && abs(player.y - y) > verticalDiff)) {
		                scr_highlight_remove();
					}
				} else {
					scr_highlight_remove();
				}
			} else {
				scr_highlight_remove();
			}
		} else {
			scr_highlight_remove();
		}
	} else {
		scr_highlight_remove();
	}
	
	// Use icon
	if (obj_player.highlight) {
		draw_sprite(spr_E,1,obj_player.x,obj_player.y-20);
	}
}