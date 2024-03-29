var extra_stats = shot_stats.Shot_Extra_Stats

//Print_DF(string(extra_stats))

if extra_stats = false {
	exit;	
}

var extra_shot_amount = array_length(extra_stats);

var i = 0;
for(i = 0; i < extra_shot_amount; i++) {
	
	if (shot_stats.Shot_Timer mod extra_stats[i].Shot_Extra_Hit_Frequency = 0) {
	
		var current_extra_stats = extra_stats[i]
		//show_debug_message("current_extra_stats: " + string(current_extra_stats))
	    dir = 0;
	    //image = 1;
	    shot_stats.Shot_Hit_Again = 1;
		if variable_struct_exists(current_extra_stats, "Burst_Power") {
			shotburstpower = shot_stats.Shot_Power * current_extra_stats.Burst_Power;
		} else {
			shotburstpower = shot_stats.Shot_Power;
		}
	    shot_stats.Shot_Impact_Type = 0;
	    shot_stats.Shot_Impact_Power = 0;
	
		var ramt = current_extra_stats.Shot_Count;
		shotduplicatesprite = asset_get_index(current_extra_stats.Shot_Sprite);
	
	    repeat(ramt) {
		    with instance_create(x + shotextrahitxx,y + shotextrahityy,obj_Lesser_Soul_Shot) {
		        //scr_Duplicate_Shot_Stats();
				
				shot_stats = scr_Setup_Default_Shot_Stats();
				var _PropertyNames = variable_struct_get_names(current_extra_stats);
		        for (var i = 0; i < array_length(_PropertyNames); i++) {
		            variable_struct_set(shot_stats, _PropertyNames[i], variable_struct_get(current_extra_stats, _PropertyNames[i]));
		        }
				scr_Setup_Shot_Stats_Asset(shot_stats);
			
				shot_stats.Shot_Speed =	shot_stats.Shot_Speed;
				shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span;
				shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
		
				speed = shot_stats.Shot_Speed;
				shot_stats.Shot_Homing_Type = shot_stats.Shot_Homing_Type;
				shot_stats.Shot_Homing_Speed = shot_stats.Shot_Homing_Speed;
				shot_stats.Shot_Pierce = shot_stats.Shot_Pierce;
				shot_stats.Shot_Acceleration = shot_stats.Shot_Acceleration;
		
				if variable_struct_exists(shot_stats, "Burst_Size") {
					shot_stats.Shot_Size = shot_stats.Shot_Size * shot_stats.Burst_Size
					image_xscale = shot_stats.Shot_Size;
					image_yscale = shot_stats.Shot_Size;
					shot_stats.Shot_Size_Max = other.shot_stats.Shot_Size_Max;
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
				shotOrbit = 0;
				shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
				shot_stats.Shot_Size_Relation = 1;
				
				scr_Shot_Particle_Setup();
	
				if instance_exists(obj_Boss_Parent) {
					if shot_stats.Shot_Boss_Aim {
						direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
						friction = 0;
					}
				}
				
		        alarm[0] = shot_stats.Shot_Life_Span;
		    }
			dir += 360 / ramt;
		}
	}
}
alarm[1] = 1;
