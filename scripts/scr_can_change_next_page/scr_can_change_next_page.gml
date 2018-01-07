var pageIndex = argument0;
var totalItemCount = argument1;
var itemsPerPage = argument2;

var canChangePage = false;
if ((totalItemCount - (pageIndex*itemsPerPage)) > 0) {
	canChangePage = true;
}
return canChangePage;