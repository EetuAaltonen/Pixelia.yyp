///Draw Toast
if (global.hudState != "roomChange") {
	if (drawToast) {
	    toasterSize = ds_list_size(toasters);
	    toasterSpeed = 2;
	    if (toasterSize > 3) {
	        toasterSpeed = 1;
	    }
	    if (toastYPos > -40) {
	        toastMessage = ds_list_find_value(toasters, 0);
	        toastYPos -= 1;
	        if (toastYPos > -29 and toastAlpha < 1) {
	            toastAlpha += 0.10;   
	        } else if (toastYPos < -29) {
	            toastAlpha -= 0.10;
	        }
	    } else {
	        toastYPos = 0;
	        ds_list_delete(toasters, 0);
	        if ((toasterSize - 1) == 0) {
	            drawToast = false;
	        }
	    }
	    alarm[1] = toasterSpeed;
	}
} else {
	alarm[1] = toasterSpeed;
}