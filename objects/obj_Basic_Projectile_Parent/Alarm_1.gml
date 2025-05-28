//Print_DF(shot_stats)

var extra_stats = shot_stats.Shot_Extra_Stats

//Print_DF(extra_stats)

if array_length(extra_stats) <= 0 {
	exit;	
}

var extra_shots_amount = array_length(extra_stats);

var i = 0;
for(i = 0; i < extra_shots_amount; i++) {
	
	if (alarm[0] mod round(extra_stats[i].Shot_Extra_Hit_Frequency) = 0) {
	
		var current_extra_stats = extra_stats[i]
	    var dir = 0;
	    shot_stats.Shot_Hit_Again = 1;
	    shot_stats.Shot_Impact_Type = 0;
	    shot_stats.Shot_Impact_Power = 0;
	
		var ramt = current_extra_stats.Shot_Count;
		
		var _xx = 0;
		var _yy = 0;
		
		if variable_struct_exists(current_extra_stats, "Shot_XX") {
			_xx = current_extra_stats.Shot_XX
		}
		if variable_struct_exists(current_extra_stats, "Shot_YY") {
			_yy = current_extra_stats.Shot_YY
		}
		
		var _og_stats = other.shot_stats
	
	    repeat(ramt) {
		    with instance_create(x + _xx,y + _yy,obj_Lesser_Soul_Shot) {
		        shot_stats = scr_Duplicate_Shot_Stats(current_extra_stats, variable_clone(_og_stats), dir);
				
				scr_Shot_Burst_Stats(current_extra_stats)
				
				if variable_struct_exists(current_extra_stats, "Shot_Extra_Stats") {
					shot_stats.Shot_Extra_Stats = current_extra_stats.Shot_Extra_Stats
				} else {
					shot_stats.Shot_Extra_Stats = []	
				}
				
				scr_Setup_Shot_Stats_Asset(shot_stats);
			
				shot_stats.Shot_Speed =	shot_stats.Shot_Speed;
				shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span;
				////shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
		
				speed = shot_stats.Shot_Speed;
				shot_stats.Shot_Homing_Type = shot_stats.Shot_Homing_Type;
				shot_stats.Shot_Homing_Speed = shot_stats.Shot_Homing_Speed;
				shot_stats.Shot_Pierce = shot_stats.Shot_Pierce;
				shot_stats.Shot_Acceleration = shot_stats.Shot_Acceleration;
		
				if variable_struct_exists(shot_stats, "Burst_Size") {
					shot_stats.Shot_Size = shot_stats.Shot_Size * shot_stats.Burst_Size
					image_xscale = shot_stats.Shot_Size;
					image_yscale = shot_stats.Shot_Size;
					shot_stats.Shot_Size_Max = _og_stats.Shot_Size_Max;
				} else {
					shot_stats.Shot_Size = shot_stats.Shot_Size;
				}
				shot_stats.Shot_Shrink = shot_stats.Shot_Shrink;
				shot_stats.Shot_Fade = shot_stats.Shot_Fade;
				
				shot_stats.Shot_Face_Direction = shot_stats.Shot_Face_Direction;
				
				sprite_index = asset_get_index(shot_stats.Shot_Sprite);

				shot_stats.Shot_Point_Angle = shot_stats.Shot_Point_Angle;

				if shot_stats.Shot_Point_Angle = 1 {

					image_angle = direction;				
				}
		
				//shot_stats.Shot_Form_Show = 0;
		
				if shot_stats.Shot_Shrink = 1 {
					shot_stats.Shot_Form_Show = 0;	
				}
		
				shot_stats.Shot_Orbital_Type = 0;
				shot_stats.Shot_Orbit_Distance = 0;
				shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
				shot_stats.Shot_Size_Relation = 1;
				
				if shot_stats.Shot_Mouse {
					if instance_exists(other.otarget) {
						direction = point_direction(other.otarget.x, other.otarget.y,mouse_x, mouse_y);
					} else {
						direction = point_direction(x,y,mouse_x, mouse_y);
					}
				}
	
				if instance_exists(obj_Boss_Parent) {
					if shot_stats.Shot_Boss_Aim {
						direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
						friction = 0;
					}
				}
				
		        alarm[0] = shot_stats.Shot_Life_Span;
				
				scr_Assign_Shot_Scripts();
				
		    }
			dir += 360 / ramt;
		}
	}
}
alarm[1] = 1;
