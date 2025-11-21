/// @description Insert description here
// You can write your code in this editor
if instance_number(Camera_Control) > 1 {
	instance_destroy();
	exit;
}
ideal_width = 0;
ideal_height = 540;

aspect_ratio = display_get_width() / display_get_gui_height();
aspect_ratio = 960/540;

ideal_width = floor(ideal_height * aspect_ratio);
ideal_width = 960;

view_zoom = 1;
view_max_zoom = 10;

if(ideal_width & 1) {
	ideal_width++;
}
if(ideal_height & 1) {
	ideal_height++;
}

window_scale = 720/540;
window_scale = 1;

max_scale = (display_get_width()/ideal_width);
max_scale = 10;

view_width = ideal_width;
view_height = ideal_height;

view_width_zoom = ideal_width / view_zoom;
view_height_zoom = ideal_height / view_zoom;

//surface_resize(application_surface, view_width * window_scale, view_height * window_scale);
window_set_size((view_width * window_scale), view_height * window_scale);
surface_resize(application_surface, (view_width * window_scale), view_height * window_scale);
display_set_gui_size(view_width * window_scale, view_width * window_scale);
alarm[0] = 1;

if instance_exists(Soul_Weapons_Control) {
	Soul_Weapons_Control.weapon_slot_info = scr_Weapon_Slot_Info_Update(Soul_Weapons_Control.weapon_slot_info)
}

//alarm[1] = 600;

//camSpeed = 0.1;
camX = room_width / 2;
camY = room_height / 2;