/// @description Insert description here
// You can write your code in this editor

scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])

if global.layerdeep < 3 {

	var camX = camera_get_view_x(view);
	var camY = camera_get_view_y(view);

	scr_Pause_Main_Leave();
	instance_create(camX + 384,camY + 216,obj_State_Menu);
	instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
	global.layerdeep = 3;

	repeat(99) {
	    instance_create(camX + random(960),camY + random(960),obj_Pause_Sparkle);
	}
	
	instance_destroy();

}

