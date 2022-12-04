if global.layerdeep = 2 {
    scr_Pause_Main_Leave();
    scr_Save_Options();
    instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
    global.layerdeep = 1
}

