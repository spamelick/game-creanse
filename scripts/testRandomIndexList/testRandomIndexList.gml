var list = ds_list_create();

ds_list_add(list, "a", "b", "c", "d", "e", "f", "g");

var index, val;
var size = ds_list_size(list) - 1;

while(!ds_list_empty(list)) {
    index = irandom(size);
    show_debug_message(index);
    val = ds_list_find_value(list, index);
    show_debug_message(val);
    show_debug_message("----------------");
    ds_list_delete(list, index);
    size--;
}

show_debug_message("OOUUPPS")

