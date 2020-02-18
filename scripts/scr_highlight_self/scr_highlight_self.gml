if (is_undefined(global.highlightedObject) ||
	global.highlightedObject == self.id)	
	if (instance_exists(obj_player)) {
	    if (global.hudState == HudStates.Null) {
	        if (distance_to_object(obj_player) <= 5) {
	            if (y - obj_player.y <= 10 && y - obj_player.y >= -10 ||
	                distance_to_object(obj_player) < 1) {
	                if ((x > obj_player.x && obj_player.image_xscale == 1) ||
	                    (x < obj_player.x && obj_player.image_xscale == -1)) {
	                    if (!obj_player.highlight) {
	                        image_blend = scr_highlight_value();
	                        //depth = Depth.Highlight;
	                        obj_player.highlight = true;
	                    } else if (obj_player.highlight && scr_highlighted()) {
	                        draw_sprite(spr_E,1,obj_player.x,obj_player.y-20);
	                    }
						global.highlightedObject = self.id;
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
	}
