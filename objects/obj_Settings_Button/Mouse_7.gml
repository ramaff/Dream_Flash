scr_Sound_Effect(snd_Button_Click)

if global.layerdeep = 1 {

    scr_Pause_Main_Leave();
    instance_create(camera_get_view_x(view) + 512,camera_get_view_x(view) + 240,obj_Title_Settings_Menu);
    instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
    global.layerdeep = 2;

}

