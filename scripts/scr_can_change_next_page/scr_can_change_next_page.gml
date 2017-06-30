var currentPage = argument0;
var totalItemCount = argument1;
var itemsPerPage = argument2;

var canChangePage = false;
if ((totalItemCount - ((currentPage+1)*itemsPerPage)) > 0) {
	canChangePage = true;
}
return canChangePage;