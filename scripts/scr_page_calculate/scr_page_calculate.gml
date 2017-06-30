size_of_list = 8; //Limit of list
start_count = 0; //First item
if (item_count > size_of_list) {                       //This have to be set!
    if (scr_can_change_next_page(current_page, item_count, size_of_list) and current_page == 0) {
        start_count = 0;
        end_count = size_of_list;
        
    } else if (scr_can_change_next_page(current_page, item_count, size_of_list) and
            current_page > 0) {
        start_count = (current_page*size_of_list);
        end_count = ((current_page*size_of_list)*2);
    } else {
        start_count = (current_page*size_of_list);
        end_count = item_count;
    }
} else {
    end_count = item_count;
    start_count = 0;
}
