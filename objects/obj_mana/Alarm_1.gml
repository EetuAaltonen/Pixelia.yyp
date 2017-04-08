///Mana regenerate
if (manaRegerate == true)
{
    global.mana += global.manaRegenAmount + global.manaRegenPlus;
}
alarm[1] = global.manaRegenSpeed;

