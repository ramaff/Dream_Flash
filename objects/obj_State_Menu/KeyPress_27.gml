instance_destroy();

scr_Pause_Main_Leave();
global.layerdeep = 2;

var camX = camera_get_view_x(view);
var camY = camera_get_view_y(view);

scr_Pause_Main_Leave();
instance_create(camX + 384,camY + 216,obj_Soul_Menu);
instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
global.layerdeep = 2;

repeat(99) {
    instance_create(camX + random(960),camY + random(960),obj_Pause_Sparkle);
}
