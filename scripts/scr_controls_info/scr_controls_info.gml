var control = argument0;
var type = argument1;
var controlList = [
	"Space", vk_space,
	"Enter", vk_enter,
	"Esc", vk_escape
]
var listLength = array_length_1d(controlList);
if (type == "name") {
	for (var i=1;i<(listLength-1);i++) {
		if (string(control) == string(controlList[i])) {
			control = controlList[i-1];
			break;
		}
		i++;
	}
} else {
	for (var i=0;i<listLength;i++) {
		if (string(control) == string(controlList[i])) {
			control = controlList[i+1];
			break;
		}
		i++;
	}
}
return control;