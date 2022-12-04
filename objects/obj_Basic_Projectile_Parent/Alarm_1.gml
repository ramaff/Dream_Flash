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
	
	    repeat(ramt) {
		    with instance_create(x + shotextrahitxx,y + shotextrahityy,obj_Lesser_Soul_Shot) {
		        shotextrahits[i] = 0;
		        shotextrahitfrequency[i] = 0;
		        scr_Duplicate_Shot_Stats();
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
		
				/*
				shotsize = 0.5;
				image_xscale = 0.5;
				image_yscale = 0.5;
		
				image = 1;
				image_alpha = 1;
				*/
		
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
