/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var dir = point_direction(x,y,mouse_x,mouse_y);

shotextrahitxx = lengthdir_x(50, dir);
shotextrahityy = lengthdir_y(50, dir);

shot_stats.Shot_Soul_Maintain = 0;

//shot_stats.Shot_Point_Angle = 1;

shotangle = dir - 90;

if shotextrahitssprite[4] = spr_Safety_Scissors_Shot {
	shotangle = dir;	
}

event_inherited();

//shot_stats.Shot_Point_Angle = 0;

shotangle = 0;