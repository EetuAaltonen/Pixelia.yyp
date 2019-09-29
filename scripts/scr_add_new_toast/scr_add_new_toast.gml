var message = argument0;
var controller = obj_toaster_controller;
ds_list_add(controller.toasters, message);
if (!controller.drawToast) {
    controller.drawToast = true;
}
if (controller.alarm[1] <= 0) {
    controller.alarm[1] = controller.toastSpeed;
}