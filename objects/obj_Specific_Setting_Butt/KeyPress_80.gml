if global.layerdeep = 3 {
    instance_destroy(obj_Option_Button);
    instance_destroy(obj_Option_Slider);
    instance_destroy(obj_Option_Pointer);
	instance_destroy(obj_Option_Reset);
	instance_destroy(obj_Recollection_Scroll_Bar);
//    instance_destroy(obj_Pause_Sparkle);
    global.layerdeep = 2;
}

repeat(99) {
//    instance_create(view_xview + random(window_get_width()),view_yview + random(window_get_height()),obj_Pause_Sparkle)
}

