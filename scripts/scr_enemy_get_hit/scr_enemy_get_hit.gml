var critical = random_range(0,1);
var damage = 0;
var damageToHealth = 0;
var damageToArmor = 0;
if (critical <= global.criticalChance) {
	damage = global.maxDamage + (global.maxDamage*global.criticalDamage);
	critical = true;
} else {
	damage = round(random_range(global.minDamage, global.maxDamage));
	critical = false;
}

/*damage = 2;
critical = false;*/

if (armor > 0) {
	damageToHealth = round(damage*(1-(armor/maxArmor)));
	damageToArmor = damage;
	armor -= damageToArmor;
	if (armor < 0) {
		armor = 0;
	}
} else {
	damageToHealth = damage;
}
healthPoints -= damageToHealth;
if (healthPoints < 0) {
	healthPoints = 0;
}

var yPosition = (y-(sprite_height/2));
instance_create(x, yPosition, obj_damage_count);
(instance_nearest(x, yPosition, obj_damage_count)).damageToHealth = damageToHealth;
(instance_nearest(x, yPosition, obj_damage_count)).damageToArmor = damageToArmor;
(instance_nearest(x, yPosition, obj_damage_count)).critical = critical;