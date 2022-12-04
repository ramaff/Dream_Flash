function scr_Bullet_Shoot_Properties() {

	target = other;            
	bullettarget = other.bullet_target;
	bulletorigin = other.id;
	bulletobj = other.object_index;
			
	bpart = other.bullet_part;
		bpartsprite = other.bullet_part_sprite;
		bpartarea = other.bullet_part_area;
		bpartfrequency = other.bullet_part_frequency;
		bpartlife = other.bullet_part_life;
		bpartcolor1 = other.bullet_part_color1;
		bpartcolor2 = other.bullet_part_color2;
			
	bulletdepth = other.bullet_depth;
	depth = bulletdepth;
	bulletID = other.bullet_id;
	soulshotblock = other.soul_shot_block;
				
	//if soulshotblock > 0 {
		projectile_hit_id = other.bullet_hit_ID;
		projectile_hits = {}// ds_list_create();
				
		//ds_list_copy(projectile_hits, other.bullet_hit_list); 
		projectile_hits = other.bullet_hit_list
	//}
	bossPart = other.boss_Part;
	        
	bulletsprite = other.bullet_sprite;
	//baseDepth = 0;
	bulletblend = other.bullet_blend;
	bulletfade = other.bullet_fade;
	bulletbounceY = other.bullet_bounce_Y;
	bulletbouncespeed = other.bullet_bounce_speed;
	bulletbouncedirection = other.bullet_bounce_direction;
	sprite_index = bulletsprite;
	bulletsize = other.bullet_size * 0.5;
	image_xscale = bulletsize;
	image_yscale = bulletsize;
	bulletspeed = other.bullet_speed;
	bulletspeedmax = bulletspeed;
	bulletpower = other.bullet_power;
	if bulletpower < global.stagedamage {
		bulletpower = global.stagedamage;	
	}
	scr_E08();
	bulletpowermax = bulletpower;
	bulletlife = other.bullet_lifespan;
	bulletimagespeed = other.bullet_image_speed;
				
	bulletcrowddirection = other.bullet_crowd_direction;
	bulletcrowdspeed = other.bullet_crowd_speed;
	bulletcrowdacceleration = other.bullet_crowd_acceleration;
			
	bulletstun = other.bullet_stun;
	bulletstuntime = other.bullet_stun_time;
	bulletsleep = other.bullet_sleep;
	bulletsleeptime = other.bullet_sleep_time;
			
	if other.bullet_direction_angle = 1 {
		image_angle = direction;	
	}
	image_speed = bulletimagespeed;
	alarm[0] = bulletlife;
	alarm[8] = 2;
				
	bulletspeed = bulletspeed * ((200 + global.soulparanoia + global.soulparanoiaTemp) / 200) * ((200 + global.soulloathing + global.soulloathingTemp) / 200);
				
				
	speed = bulletspeed;
			
	with instance_create(x,y,obj_LightS) {
		target = other.id;
		//lightsize = other.shotlightsize;
				
		//sprite_index = spr_Bullet_Glow;
		lightsize = other.bulletsize;
	}
				
	/*
	with instance_create(x,y,obj_Dream_Light) {
		target = other.id;
		//lightsize = other.shotlightsize;
				
		//sprite_index = spr_Bullet_Glow;
		lightsize = other.bulletsize;
	}*/
	if bpart != 0 {
		scr_Bullet_Particle_Setup();
	}
				
	bulletdepth = other.bullet_depth;
	depth = bulletdepth;
				
	if bulletblend != 0 {
		scr_Bullet_Blend(bulletblend);	
	}
				
	sizeF = 1;
	
	if global.XA[2] > 0 {
		scr_XA02_Bullet();
	}



}
