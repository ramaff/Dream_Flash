/// @description Insert description here
// You can write your code in this editor

//xxx = camera_get_view_x(view_camera[0]);
//yyy = camera_get_view_y(view_camera[0]);

xxx = camera_get_view_x(view);
yyy = camera_get_view_y(view);

alpha_up = 1;
flashLife = 6;

alarm[0] = flashLife;
alarm[1] = flashLife / 3;
image_alpha = 0;