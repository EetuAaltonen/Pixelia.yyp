// Draw Toast
if (global.hudState != HudStates.RoomChange) {
	if (drawToast) {
		if (is_undefined(toastMessage)) {
			toastMessage = ds_list_find_value(toasters, 0);	
		}
	    toasterSize = ds_list_size(toasters);
	    toastSpeed = 2;
	    if (toasterSize > 3) {
	        toastSpeed = 1;
	    }
		
		var toastMaxHeight = toastStartY - toastAreaHeight;
	    if (toastYPos < toastMaxHeight) {
			ds_list_delete(toasters, 0);
			toastYPos = toastStartY;
			toastMessage = undefined;
		} else {
			var upperAlphaTrigger = toastStartY - (toastAreaHeight * 0.75);
			var lowerAlphaTrigger = toastStartY - (toastAreaHeight * 0.25);
			if (toastYPos < upperAlphaTrigger) {
				toastAlpha = 1 - ((upperAlphaTrigger - toastYPos)/(toastAreaHeight * 0.25));
			} else if (toastYPos > lowerAlphaTrigger) {
				toastAlpha = ((toastStartY - toastYPos)/(toastAreaHeight * 0.25));	
			}
			toastYPos -= toastStep;
		}
		
		if (toasterSize > 0) {
			alarm[1] = toastSpeed;
	    } else {
			drawToast = false;
		}
	}
} else {
	alarm[1] = toastSpeed;
}