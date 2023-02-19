var extra_stats = shot_stats.Shot_Extra_Stats

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
	    shotburstpower = current_extra_stats.Shot_Power;
	    shotimpacttype = 0;
	    shotimpactpower = 0;
	
		var ramt = current_extra_stats.Shot_Count;
		shotduplicatesprite = asset_get_index(current_extra_stats.Shot_Sprite);
		
		//var stats = shot_stats
		//var stats = current_extra_stats;
	
	    repeat(ramt) {
		    with instance_create(x + shotextrahitxx,y + shotextrahityy,obj_Lesser_Soul_Shot) {
		        //shotextrahits[i] = 0;
		        //shotextrahitfrequency[i] = 0;
		        scr_Duplicate_Shot_Stats();
				
				//shot_stats = json_parse(json_stringify(current_extra_stats));
				
				//shot_stats = json_parse(json_stringify(global.DEFAULT_SHOT_STATS));
				shot_stats = scr_Setup_Default_Shot_Stats();
				var _PropertyNames = variable_struct_get_names(current_extra_stats);
		        for (var i = 0; i < array_length(_PropertyNames); i++) {
		            variable_struct_set(shot_stats, _PropertyNames[i], variable_struct_get(current_extra_stats, _PropertyNames[i]));
		        }
				//if current_extra_stats.Shot_Extra_Stats != false {
				//	shot_stats = current_extra_stats.Shot_Extra_Stats
				//}
				
				//show_debug_message(shot_stats)
				
				//shotextrahits[i] = 0;
		        //shotextrahitfrequency[i] = 0;
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


/*

var i = 0;
for(i = 0; i < 5; i++) {
	if shotextrahits[i] > 0 and (shottimer mod shotextrahitfrequency[i] = 0) {
	
	    dir = 0;
	    //image = 1;
	    shothitagain = 1;
	    shotburstpower = shotextrahitpower[i];
	    shotimpacttype = 0;
	    shotimpactpower = 0;
	
		var ramt = shotextrahits[i];
		shotduplicatesprite = shotextrahitssprite[i];
		
		var stats = shot_stats
	
	    repeat(ramt) {
		    with instance_create(x + shotextrahitxx,y + shotextrahityy,obj_Lesser_Soul_Shot) {
		        shotextrahits[i] = 0;
		        shotextrahitfrequency[i] = 0;
		        scr_Duplicate_Shot_Stats();
				
				if stats.Shot_Extra_Stats != false {
					shot_stats = stats.Shot_Extra_Stats
				}
				
				shotextrahits[i] = 0;
		        shotextrahitfrequency[i] = 0;
				shotspeed = other.shotextrahitspeed[i];
				shotlifespan = other.shotextrahitlifespan[i];
				shottimer = shotlifespan;
		
				speed = shotspeed;
				shothomingtype = other.shotextrahithoming[i];
				shothomingspeed = other.shotextrahithomingspeed[i];
				shotpierce = other.shotextrahitpierce[i];
				shotacceleration = other.shotextrahitacceleration[i];
		
				shotsize = other.shotextrahitsize[i];
				shotshrink = other.shotextrahitshrink[i];
				shotfade = other.shotextrahitfade[i];
				
				sprite_index = shotextrahitssprite[i];

				shotpointangle = other.shotpointangle;

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
					if i = 1 || i = 4 {
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
//alarm[1] = shotextrahitfrequency;
alarm[1] = 1;
