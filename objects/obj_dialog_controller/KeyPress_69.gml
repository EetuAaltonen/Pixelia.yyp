///Close dialog
if (global.hudState == "dialog")
{
    global.hudState = "null";
    obj_dialog_controller.dialogOptions = "null";
    obj_dialog_controller.bgHeight = bgHeightOriginal;
    alarm[1] = 10;
}

