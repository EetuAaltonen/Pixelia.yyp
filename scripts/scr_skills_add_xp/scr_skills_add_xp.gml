/*
enum skill {
	name,
	level,
	xp,
	xpLimit
}
*/

var skillName = argument0;
var xp = argument1;

var i;
var skills = global.skills;
var skill;
var listSize = array_length_1d(skills);

for (i = 0; i < listSize; i++) {
	skill = skills[i];
	if (skill[0] == skillName) {
		if (skill[2] + xp >= skill[3]) {
			skill[2] = (skill[2] + xp) - skill[3];
			skill[1] += 1;
		} else {
			skill[2] += xp;	
		}
		skills[i] = skill;
		global.skills[i] = skills[i];
		break;
	}
}