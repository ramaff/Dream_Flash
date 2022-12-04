var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);

/*
for(i = 1; i <= 6; i++) {
    with instance_create(camX - 512 + 64 * i,camY - 128,obj_Soul_Stat_Meter) {
        stat = other.i;
    }
    with instance_create(camX - 512 + 64 * i,camY + 40,obj_Soul_Stat_Meter) {
        stat = other.i + 6;
    }
} */

sprog = 1;



with instance_create(camX + 168,camY - 208,obj_Back_To_Soul_Menu_Button) {
	depth = -1000000;	
}
with instance_create(camX + 264,camY - 208,obj_State_Menu_Button) {
	depth = -1000000;	
}
