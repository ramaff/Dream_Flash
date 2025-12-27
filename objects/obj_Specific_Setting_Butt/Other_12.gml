/// @description Insert description here
// You can write your code in this editor

if global.layerdeep = 3 {
    instance_destroy(obj_Option_Button);
    instance_destroy(obj_Option_Slider);
    instance_destroy(obj_Option_Pointer);
	instance_destroy(obj_Option_Reset);
	instance_destroy(obj_Recollection_Scroll_Bar);
	instance_destroy(obj_Specific_Setting_Butt)
//    instance_destroy(obj_Pause_Sparkle);
	//scr_Pause_Main_Leave();

    global.layerdeep = 2;
	
	scr_Settings_Menu_Cursor_Setup()
}
