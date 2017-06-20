var damage = argument0;
var critical = argument1;
var yPosition = (y-(sprite_height/2));
instance_create(x, yPosition, obj_damage_count);
(instance_nearest(x, yPosition, obj_damage_count)).damage = damage;
(instance_nearest(x, yPosition, obj_damage_count)).critical = critical;