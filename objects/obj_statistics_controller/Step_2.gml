/// @description stamina & mana limits
///Stamina usage
if (instance_exists(obj_player))
{
    //Stamina
	if (global.stamina > (global.maxStamina + global.staminaPlus)) {
        global.stamina = (global.maxStamina + global.staminaPlus);
    } else if (global.stamina < 0) {
        global.stamina = 0;
    }
	
	//Mana
	if (global.mana > (global.maxMana + global.manaPlus)) {
        global.mana = (global.maxMana + global.manaPlus);
    } else if (global.mana < 0) {
        global.mana = 0;
    }
}