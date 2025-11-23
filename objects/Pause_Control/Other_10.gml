/// @description Insert description here
// You can write your code in this editor


if global.layerdeep < 2 and global.doneLoading = 1 and global.doneTransitioning = 1 {
    if (!pause) {
        instance_destroy(obj_Light_Control);
        pause = 1
        global.layerdeep = 1;
		scr_Collect_Income();
        instance_deactivate_all(true);
        instance_activate_object(Control_Parent);
		instance_activate_object(__InputUpdateController)
        scr_Pause_Main_Spawn();
    } else {
        pause = 0;
        global.layerdeep = 0;
        instance_activate_all();
        scr_Pause_Main_Leave();
        scr_Save_Options();
        instance_create(x,y,obj_Light_Control);
    }
}

