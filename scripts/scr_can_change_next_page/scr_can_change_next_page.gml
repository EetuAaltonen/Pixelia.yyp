var pageIndex = argument0;
var totalItemCount = argument1;
var itemsPerPage = argument2;
if ((totalItemCount - (pageIndex*itemsPerPage)) > 0) {
	return true;
}
return false;