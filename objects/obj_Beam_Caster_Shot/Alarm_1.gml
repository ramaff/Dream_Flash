/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var dir = point_direction(x,y,mouse_x,mouse_y);

shot_stats.Shot_Extra_Hit_XX = lengthdir_x(50, dir);
shot_stats.Shot_Extra_Hit_YY = lengthdir_y(50, dir);

shot_stats.Shot_Soul_Maintain = 0;

//shot_stats.Shot_Point_Angle = 1;

shot_stats.Shot_Angle = dir - 90;

if variable_struct_exists(shot_stats, "Shot_Extra_Stats") {
	if is_array(shot_stats.Shot_Extra_Stats) {
		if array_length(shot_stats.Shot_Extra_Stats) > 0 {
			if shot_stats.Shot_Extra_Stats[0].Shot_Sprite = "spr_Safety_Scissors_Shot" {
				shot_stats.Shot_Angle = dir;	
			}
		}
	}
}

event_inherited();

//shot_stats.Shot_Point_Angle = 0;

shot_stats.Shot_Angle = 0;
