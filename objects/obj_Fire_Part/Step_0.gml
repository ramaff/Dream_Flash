/// @description Insert description here
// You can write your code in this editor

direction = base_direction + scr_Wave(-60, 60, 0.5, 0)

base_direction = scr_Angle_Converge(base_direction, 90, 3)

if alarm[0] <= 5 {
	image_xscale -= size / 5;
	image_yscale = image_xscale;
}

//friction = speed / (life / 1.5);