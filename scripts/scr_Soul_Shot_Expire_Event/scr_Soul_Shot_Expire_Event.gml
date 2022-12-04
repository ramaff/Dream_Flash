// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Expire_Event(){
	
	/*if ds_exists(bullet_hits, ds_type_list) {
		if ds_list_empty(bullet_hits) and shotorigin = obj_Soul_Parent {
			scr_A07_Reset();	
		}
	} */
	
	if variable_struct_names_count(bullet_hits) == 0 and shotorigin = obj_Soul_Parent {
		scr_A07_Reset();	
	}

	if shotcomeback > 0 {
	    shotcomeback--;
	    dir = 180;
	    image = 1;
	    shothitagain = 1;
	    with instance_create(x,y,obj_Lesser_Soul_Shot) {
	        scr_Duplicate_Shot_Stats();
			shottimer = shotlifespan;
			image_alpha = 1;
	    }
	}

	if shotrecycle > 0 {
	    shotrecycle--;
	
		dir = 0;
		shotburstpower = shotpower;
		shotduplicatesprite = other.shotduplicatesprite;

	
	    image = 1;
	    shothitagain = 1;
	    with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Lesser_Soul_Shot) {
	        scr_Duplicate_Shot_Stats();
			shottimer = shotlifespan;
			image_alpha = 1;
			//shotformshow = 0;
			shotSizeRelation = 1;
			shottimer = shotlifespan;
			shotsizemax = shotsize;
			sprite_index = other.sprite_index;
			direction = point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x, mouse_y) - (shotaccuracy / 2) + random(shotaccuracy);
	    } 
	} else if shotwander > 0 {
		shotwander--;
		direction = random(360);
		var fac = (1 + random(1))
		shotspeed = shotspeed * fac;
		speed = speed * fac;
		dir = random(360);
		shotburstpower = shotpower;
		
		with instance_create(x,y,obj_Lesser_Soul_Shot) {
	        scr_Duplicate_Shot_Stats();
			shottimer = shotlifespan;
			image_alpha = 1;
			//shotformshow = 0;
			shotSizeRelation = 1;
			shottimer = shotlifespan;
			shotsizemax = shotsize;
			sprite_index = other.sprite_index;
	    } 
	}

	if shotimpacttype = 1 {
	    with (obj_Boss_Parent) {
			var hit_again = variable_struct_exists(projectile_hits, other.shot_id)
			if !hit_again {
		        if distance_to_object(other) < other.shotimpactsize {
		            scr_Boss_Splash_Damage_Calc();
		        }
		    }
	    }
		/*
	    with instance_create(x,y,obj_Essence_Impact_Show) {
	        sprite_index = spr_Explosion_Effect;
	        size = other.shotimpactsize / 150;
	        image_xscale = size;
	        image_yscale = size;
	    }
		*/
		if shotimpactexplode > 0 {
			scr_Boss_Hit_Explosion();
		}
		if shotscreenshake > 2 {
			scr_Screen_Shake(shotscreenshake, shotscreenshake - 2);
		}
	}

	if shotimpacttype = 2 {
		scr_Screen_Shake(20, 14);
		scr_Screen_Flash(7);
		
		with (obj_Boss_Parent) {
			dmg = other.shotimpactpower;
			bosshealth -= dmg;
			scr_Damage_Indicator(0, dmg, 2);
		}
		
		with(obj_Bullet_Parent) {
			bulletspeed = bulletspeed / 3;
			speed = speed / 3;
				
			bulletpower -= other.shotimpactpower / 2;
			bulletsize = (bulletpower / bulletpowermax);
				
			if bulletsize < 0.05 {
				bulletsize = 0.05;	
			}
			if bulletpower < 1 {
				instance_destroy();	
			}
		}
	}
	
	instance_destroy();

}