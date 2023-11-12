function scr_Bullet_Replicate_Properties(_keep_part = false) {
	bulletorigin = other.bulletorigin;
	bulletobj = other.bulletobj;
	bulletID = other.bulletID;
				
	soulshotblock = other.soulshotblock;
				
	//if soulshotblock > 0 {
		projectile_hit_id = other.projectile_hit_id;
		projectile_hits = {}//ds_list_create();
		//if ds_exists(other.projectile_hits, ds_type_list) {
		//	ds_list_copy(projectile_hits, other.projectile_hits);
		//}
		if is_struct(other.projectile_hits) {
			projectile_hits = other.projectile_hits
		}
	//}
	bossPart = other.bossPart;
	bulletsprite = other.bulletsprite;
	sprite_index = bulletsprite;
	//baseDepth = other.baseDepth + 0.0035;
			
	bpart = 0;
	if _keep_part = true {
		bpart = other.bpart	
	}
	bpartsprite = other.bpartsprite;
	bpartarea = other.bpartarea;
	bpartfrequency = other.bpartfrequency;
	bpartlife = other.bpartlife;
	bpartcolor1 = other.bpartcolor1;
	bpartcolor2 = other.bpartcolor2;
	bpartsize = other.bpartsize;
				
	bulletdepth = other.bulletdepth;
	depth = bulletdepth;
            
	//scr_Room_Depth(0.05);
            
	bulletfade = other.bulletfade;
	bulletblend = other.bulletblend;
	bulletsize = other.bulletsize;
	bulletsizemax = other.bulletsize;
	image_xscale = bulletsize;
	image_yscale = bulletsize;
	bulletspeed = other.bulletspeed;
	bulletspeedmax = other.bulletspeedmax;
	bulletpower = other.bulletpower;
	bulletpowermax = bulletpower;
	bulletlife = other.bulletlife;
	bulletlobtime = other.bulletlobtime;
	bulletimagespeed = other.bulletimagespeed;
	        
	bulletbounceY = other.bulletbounceY;
	bulletbouncespeed = other.bulletbouncespeed;
	bulletbouncedirection = other.bulletbouncedirection;
			
	bulletstun = other.bulletstun;
	bulletstuntime = other.bulletstuntime;
	bulletsleep = other.bulletsleep;
	bulletsleeptime = other.bulletsleeptime;
				
	bulletcrowddirection = other.bulletcrowddirection;
	bulletcrowdspeed = other.bulletcrowdspeed;
	bulletcrowdacceleration = other.bulletcrowdacceleration;
			
	sizeF = 1;
			
	scr_E08();
	image_speed = bulletimagespeed;
	alarm[0] = bulletlife;
	alarm[8] = 2;
	speed = bulletspeed;
				
	with instance_create(x,y,obj_LightS) {
		target = other.id;
		//lightsize = other.shotlightsize;
				
		//sprite_index = spr_Bullet_Glow;
		lightsize = other.bulletsize;
	}
				
	if bpart != 0 {
		scr_Bullet_Particle_Setup();
	}
				
	if bulletblend != 0 {
		scr_Bullet_Blend(bulletblend);	
	}
	
	bounce_speed = other.bounce_speed;
	bounce_gravity = other.bounce_gravity;
	bullet_bounce_Y = other.bullet_bounce_Y;
				
	//sizeF = other.sizeF;



}
