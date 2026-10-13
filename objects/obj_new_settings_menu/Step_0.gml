if gui_wait>0
    gui_wait--

if (InputReleased(INPUT_VERB.PAUSE) || InputReleased(INPUT_VERB.CANCEL)) and gui_wait == 0 {
    if parent.object_index == obj_title_menu{
        parent.gui_wait = 5
        parent.current_menu = TITLE_MENUS.MAIN
    }
    instance_destroy()
}