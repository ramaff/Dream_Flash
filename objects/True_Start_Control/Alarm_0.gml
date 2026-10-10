room_goto(Title_Screen)

window_set_size(global.gameResolutionX, global.gameResolutionY)
surface_resize(application_surface, global.gameResolutionX, global.gameResolutionY)
//display_set_gui_size(global.gameResolutionX, global.gameResolutionY)
display_set_gui_maximise(
    1280 / global.gameResolutionX,
    720 / global.gameResolutionY
)