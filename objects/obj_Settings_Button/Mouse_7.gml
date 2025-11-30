

if global.layerdeep = 1 {

	scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
    scr_Pause_Main_Leave();
    instance_create(camera_get_view_x(view) + 512,camera_get_view_x(view) + 240,obj_Title_Settings_Menu);
    global.layerdeep = 2;

}

