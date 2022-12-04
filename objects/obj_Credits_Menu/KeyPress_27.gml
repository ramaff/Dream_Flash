if global.layerdeep = 2 {
    scr_Pause_Main_Leave();
    scr_Save_Options();
    global.layerdeep = 1
    instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
}

