///scr_unequip_type_name(argument0)
var spriteName = argument0;
var typeName = "";
if (string_pos("helmet", spriteName)) {
	typeName = "helmet";
} else if (string_pos("shield", spriteName)) {
	typeName = "shield";
} else if (string_pos("boots", spriteName)) {
	typeName = "boots";
} else if (string_pos("amulet", spriteName)) {
	typeName = "amulet";
} else if (string_pos("ring", spriteName)) {
	typeName = "ring";
} else if (string_pos("bow", spriteName)) {
	typeName = "bow";
} else if (string_pos("arrow", spriteName)) {
	typeName = "arrow";
}
return typeName;