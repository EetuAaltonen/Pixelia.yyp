var amount = argument0;
var moneyCap = 999999999; //999 999 999
global.coins += amount;
if (global.coins > moneyCap) {
	global.coins = moneyCap;	
}
if (global.coins < 0) {
    global.coins = 0;
}