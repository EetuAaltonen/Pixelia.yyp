var coins = string(argument0);
var coinsStr = coins;
var strLength = string_length(coins);
if (strLength > 3) {
	coinsStr = string_insert(" ", coinsStr, (strLength-2));
	if (strLength > (6)) {
		coinsStr = string_insert(" ", coinsStr, (strLength-5));
	}
}
return coinsStr + " G";