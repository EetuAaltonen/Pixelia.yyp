///Close dialog
if (global.hudState == HudStates.Dialog)
{
    global.hudState = HudStates.Null;
    obj_dialog_controller.dialogOptions = "null";
    obj_dialog_controller.bgHeight = bgHeightOriginal;
    alarm[1] = 10;
}

