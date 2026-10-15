if using_controller == false{
    if InputDeviceGetAnyGamepadConnected(){
        using_controller = true
    }
}
else{
    if mouse_moved>0{
        mouse_moved--
    }
    else {
        if InputDeviceGetAnyGamepadConnected()==false{
            using_controller = false
        }
        if InputMouseMoved(){
            mouse_moved = 60
            using_controller = false
        }
    }
}

if gui_wait>0
    gui_wait--

switch (current_menu) {
	default: break;
    case TITLE_MENUS.MAIN: menu_main.step() break;
    case TITLE_MENUS.CREDITS: menu_credits.step() break;
    case TITLE_MENUS.PLAY: play_menu.step() break;
}