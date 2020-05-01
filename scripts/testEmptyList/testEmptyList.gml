show_debug_message("testEmptyList begin");

var list = ds_list_create();
var len = 0;

//ds_list_add(list, "213", "213");

show_debug_message(ds_list_size(list));

if (!ds_list_size(list)) {
    show_debug_message("TRUE");
} else {
    show_debug_message("FALSE");
}

show_debug_message("testEmptyList finish");