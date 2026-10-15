var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);

sprog = 1;



instance_create_depth(camX - 352,camY + 240,-1000000,obj_Back_To_Soul_Menu_Button)
instance_create_depth(camX - 256,camY + 240,-1000000,obj_State_Menu_Button)

scr_Tutorial_Note_Spawn("state_menu_tutorial")
