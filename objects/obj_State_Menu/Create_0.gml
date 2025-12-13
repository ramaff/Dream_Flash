var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);

sprog = 1;



with instance_create(camX - 352,camY + 240,obj_Back_To_Soul_Menu_Button) {
	depth = -1000000;	
}
with instance_create(camX - 256,camY + 240,obj_State_Menu_Button) {
	depth = -1000000;	
}

scr_Tutorial_Note_Spawn("state_menu_tutorial")
