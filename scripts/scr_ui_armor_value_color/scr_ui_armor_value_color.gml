/// @description Calculate the text color depending on global armor values
/// @return Color - Text color

var color = c_white;
if (global.armor > ((global.maxArmor + global.armorPlus)*0.75)) {
	color = c_white;
} else if (global.armor > ((global.maxArmor + global.armorPlus)*0.5)) {
	color = c_yellow;
} else if (global.armor > ((global.maxArmor + global.armorPlus)*0.25)) {
	color = c_orange;
} else {
	color = c_red;
}
return color;