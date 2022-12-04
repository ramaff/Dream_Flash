// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro camcon Camera_Control

function scr_Game_Zoom(zoom) {
	
	if zoom < 0.25 {
		zoom = 0.25;	
	}
	
	camcon.window_scale = zoom;
	
	if camcon.window_scale > camcon.max_scale {
		camcon.window_scale = camcon.max_scale;
	}
	
	window_set_size(camcon.view_width * camcon.window_scale, camcon.view_height * camcon.window_scale);
	if global.gameGraphics = "High" {
		surface_resize(application_surface, camcon.view_width * camcon.window_scale, camcon.view_height * camcon.window_scale);
		display_set_gui_size(camcon.view_width * camcon.window_scale, camcon.view_height * camcon.window_scale);
	} else {
		surface_resize(application_surface, camcon.view_width, camcon.view_height);
		display_set_gui_size(camcon.view_width * camcon.window_scale, camcon.view_height * camcon.window_scale);
	}
	
	//surface_resize(application_surface, display_get_width(), display_get_height());
	
	camcon.alarm[0] = 1;
	
	if instance_exists(obj_Bloom_Control) {
		instance_destroy(obj_Bloom_Control);
		instance_create(0,0,obj_Bloom_Control);
	}
	
	global.gameResolutionX = camcon.view_width * camcon.window_scale;
	global.gameResolutionY = camcon.view_height * camcon.window_scale;
}