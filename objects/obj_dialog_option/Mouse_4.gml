///Select dialog option
if (option == optionLeave)
{    
    global.hudState = "null";
    global.dialogId = 0;
    obj_dialog_controller.dialogOptions = "null";
    obj_dialog_controller.bgHeight = obj_dialog_controller.bgHeightOriginal;
    obj_dialog_controller.alarm[1] = 10;
}
else
{
    global.dialogId += 1;
    obj_dialog_controller.dialogOptions = "null";
}

