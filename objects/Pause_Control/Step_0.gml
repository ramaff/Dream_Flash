
if InputPressed(INPUT_VERB.CONSOLE) {
	steam_activate_overlay()	
}

if InputReleased(INPUT_VERB.PAUSE) || keyboard_check_released(ord("P")) || keyboard_check_released(vk_escape) {
	event_user(0)	
}

if global.layerdeep >= 1 {
	if InputReleased(INPUT_VERB.CANCEL) {
		event_user(0)
	}
}


if instance_exists(obj_Fade) {
	exit;	
}

if !window_has_focus() and global.gameFocusPause{
    if global.layerdeep < 2 and global.doneLoading = 1 and global.doneTransitioning = 1 {
        if (!pause) {
            instance_destroy(obj_Light_Control);
            pause = 1
            global.layerdeep = 1;
			scr_Collect_Income();
            instance_deactivate_all(true);
            instance_activate_object(Music_Control)
            instance_activate_object(Control_Parent);
			instance_activate_object(__InputUpdateController)
            scr_Pause_Main_Spawn();
        }
    }
}

