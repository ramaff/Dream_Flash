function scr_A11() {
	// Location Soul Hit Reactions

	if global.A[11] > 0 {
		/*
		repeat(7) {
		    with instance_create(x,y,obj_Bullet_Conquest) {
		        speed = 7 + random(23);
		        direction = random(360);
		        alarm[0] = 5 + irandom(4);
		    }
		}
		*/
		repeat(8) {
			scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, c_black, c_black, 1, 16 + random(8), random(360), 0, 0, 0.5, 25 + random(5))
		}
		
		scr_Disk_Effect(20, 0.5, c_red);
		scr_Disk_Effect(20, 0.9, c_red);
		
		var dist = (150 + global.A[11] * 25)
		var dam = 4 + (4 * global.A[11]);
		
		with(obj_Bullet_Parent) {
		    if distance_to_object(other) <= dist {
		        bulletspeed = bulletspeed / 3;
		        speed = speed / 3;
				
				bulletpower -= dam
				bulletsize = (bulletpower / bulletpowermax);
				image_xscale = bulletsize;
				image_yscale = bulletsize;
				
				if bulletsize < 0.05 {
					bulletsize = 0.05;	
				}
				if bulletpower < 1 {
					instance_destroy();	
				}
		    }
		}
		
		with(obj_Boss_Parent) {
	        if distance_to_object(other) <= (150 + 25 * global.A[11]) {
	            dmg = global.A[11] * 20;
	            bosshealth -= dmg;
            
	            with instance_create(x,y,obj_Damage_Indicator) {
	                element = 0;
	                damageIndication = other.dmg;
	                textSize = 1;
	                direction = 90;
	                speed = 1 + (other.speed / 6) + random(0.05)
	                friction = 0.01 + (other.speed / 600)
	                alarm[0] = 30 + irandom(3);
	            }
	        }
	    }
	}


}
