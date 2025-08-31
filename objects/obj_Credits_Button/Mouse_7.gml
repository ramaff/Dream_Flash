
scr_Sound_Effect(snd_Button_Click)

if global.layerdeep = 1 {

    scr_Pause_Main_Leave();
    instance_create(camera_get_view_x(view) + 512,camera_get_view_y(view) + 288,obj_Credits_Menu);
	instance_create(camera_get_view_x(view) + 828,camera_get_view_y(view) + 448,obj_Album_Link);
    instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
    global.layerdeep = 2;

}

