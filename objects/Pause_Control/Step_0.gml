
if InputPressed(INPUT_VERB.PAUSE ) {
	event_user(0)	
}


if instance_exists(obj_Fade) {
	exit;	
}

if !window_has_focus() {
    if global.layerdeep < 2 and global.doneLoading = 1 and global.doneTransitioning = 1 {
        if (!pause) {
            instance_destroy(obj_Light_Control);
            pause = 1
            global.layerdeep = 1;
			scr_Collect_Income();
            instance_deactivate_all(true);
            instance_activate_object(Control_Parent);
            scr_Pause_Main_Spawn();
        }
    }
}

