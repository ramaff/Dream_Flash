/// @description Insert description here
// You can write your code in this editor
if instance_number(obj_Dream_Cursor) > 1 {
	instance_destroy()	
}

stop_following_mouse = 0
controller_movement = 0;

if InputDeviceGetAnyGamepadConnected() {
	stop_following_mouse = 1;	
	x = -64;
	y = -64;	
}

movement_delay = 0;
movement_max_delay = 15;
target_button = noone;


menu_grid = [];
xx = 0;
yy = 0;
max_x = 0;
max_y = 0;

alarm[0] = 1;