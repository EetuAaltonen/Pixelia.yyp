///Stamina regenerate
if (staminaRegerate == true)
{
    global.stamina += global.staminaRegenAmount + global.staminaRegenPlus;
}
alarm[1] = global.staminaRegenSpeed;

