///scr_equip_add_buffs(argument0)
var buffName = argument0;
var mark = "";
switch (buffName) {
	//case "Carrying capacity": mark = " Pw"; break;
	case "Critical chance": mark = "%"; break;
	case "Movement speed": mark = "%"; break;
	case "Dodge chance": mark = "%"; break;
}
return mark;