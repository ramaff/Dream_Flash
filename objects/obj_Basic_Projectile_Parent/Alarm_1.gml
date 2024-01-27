var extra_stats = shot_stats.Shot_Extra_Stats

//Print_DF(string(extra_stats))

if extra_stats = false {
	exit;	
}

var extra_shot_amount = array_length(extra_stats);

var i = 0;
for(i = 0; i < extra_shot_amount; i++) {
	
	if (shottimer mod extra_stats[i].Shot_Extra_Hit_Frequency = 0) {
	
		var current_extra_stats = extra_stats[i]
		//show_debug_message("current_extra_stats: " + string(current_extra_stats))
	    dir = 0;
	    //image = 1;
	    shothitagain = 1;
		if variable_struct_exists(current_extra_stats, "Burst_Power") {
			shotburstpower = shotpower * current_extra_stats.Burst_Power;
		} else {
			shotburstpower = shot_stats.Shot_Power;
		}
	    shotimpacttype = 0;
	    shotimpactpower = 0;
	
		var ramt = current_extra_stats.Shot_Count;
		shotduplicatesprite = asset_get_index(current_extra_stats.Shot_Sprite);
	
	    repeat(ramt) {
		    with instance_create(x + shotextrahitxx,y + shotextrahityy,obj_Lesser_Soul_Shot) {
		        scr_Duplicate_Shot_Stats();
				
				shot_stats = scr_Setup_Default_Shot_Stats();
				var _PropertyNames = variable_struct_get_names(current_extra_stats);
		        for (var i = 0; i < array_length(_PropertyNames); i++) {
		            variable_struct_set(shot_stats, _PropertyNames[i], variable_struct_get(current_extra_stats, _PropertyNames[i]));
		        }
			
				shotspeed =	shot_stats.Shot_Speed;
				shotlifespan = shot_stats.Shot_Lifespan;
				shottimer = shotlifespan;
		
				speed = shotspeed;
				shothomingtype = shot_stats.Shot_Homing_Type;
				shothomingspeed = shot_stats.Shot_Homing_Speed;
				shotpierce = shot_stats.Shot_Pierce;
				shotacceleration = shot_stats.Shot_Acceleration;
		
				shotsize = shot_stats.Shot_Size;
				shotshrink = shot_stats.Shot_Shrink;
				shotfade = shot_stats.Shot_Fade;
				
				shotfacedirection = shot_stats.Shot_Face_Direction;
				
				sprite_index = asset_get_index(shot_stats.Shot_Sprite);

				shotpointangle = shot_stats.Shot_Point_Angle;

				if shotpointangle = 1 {

					image_angle = direction;				
				}
		
				//shotformshow = 0;
		
				if shotshrink = 1 {
					shotformshow = 0;	
				}
		
				shotorbitaltype = 0;
				shotOrbit = 0;
				shotsizemax = shotsize;
				shotSizeRelation = 1;
		
				scr_Shot_Particle_Setup();
	
				if instance_exists(obj_Boss_Parent) {
					if shot_stats.Shot_Boss_Aim {
						direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
						friction = 0;
					}
				}
				
		        alarm[0] = shotlifespan;
		    }
			dir += 360 / ramt;
		}
	}
}
alarm[1] = 1;
