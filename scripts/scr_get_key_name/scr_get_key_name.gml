var key = argument0;
var keyData =  [
	["Space", vk_space],
	["Enter", vk_enter],
	["Esc", vk_escape]
];
var tempKey = undefined;
var keyDataCount = array_length_1d(keyData);
var i;
for (i = 0; i < keyDataCount; i++) {
	tempKey = keyData[i];
	if (key == tempKey[1]) {
		return tempKey[0];
	}
}
return tempKey;