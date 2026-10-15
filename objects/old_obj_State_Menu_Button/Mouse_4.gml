/// @description Insert description here
// You can write your code in this editor

instance_destroy();

var camX = camera_get_view_x(view);
var camY = camera_get_view_y(view);

scr_Pause_Main_Leave();
instance_create_depth(camX + 384,camY + 216,0,obj_State_Menu);
instance_create_depth(mouse_x,mouse_y,-1000000,obj_Dream_Cursor);
global.layerdeep = 3;

repeat(99) {
    instance_create_depth(camX + random(960),camY + random(960),0,obj_Pause_Sparkle);
}
