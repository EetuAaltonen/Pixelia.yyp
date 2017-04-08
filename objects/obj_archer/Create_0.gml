//Can shoot
shoot = true;
//Damage
get_damage = 1;
//Stats
view_yview_stats = 0;
show_name = "arch";
draw_state = false;
//1 == change to upgrade
str = 1;
def = 1;
mag = 0;
scr_enemy_generate_stats();

//Create a bow
instance_create(x - 5, y + 6, obj_archer_bow);
//Animation = Ready
(instance_nearest(x, y, obj_archer_bow)).image_index = 2;

