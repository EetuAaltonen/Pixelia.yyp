//Skilltree
draw_text(__view_get( e__VW.XView, 0 )+400, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Skill points: " + string(global.skill_points)));
draw_text(__view_get( e__VW.XView, 0 )+15, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Name"));
draw_text(__view_get( e__VW.XView, 0 )+15, __view_get( e__VW.YView, 0 )+100, string_hash_to_newline(skill_name));
draw_text(__view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Bonus"));
draw_text(__view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+100, string_hash_to_newline(string(skill_bonus)));
draw_text(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+90, string_hash_to_newline("Price"));
draw_text(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+100, string_hash_to_newline(string(skill_price)));
