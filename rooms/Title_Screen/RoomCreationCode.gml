

scr_Settings_Status_Store();

scr_Controls_Setup();

scr_Load_Options();

/*
window_set_size(global.gameResolutionX,global.gameResolutionY);
*/
if global.gameFullscreen = 1 {
    window_set_fullscreen(true);
}


scr_Game_Zoom(global.gameResolutionY / 540)

window_center();

room_speed = 60;