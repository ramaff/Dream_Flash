/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if soulshotblock > 0 {
	if ds_exists(projectile_hits, ds_type_list) {
		with instance_create(x,y,obj_Poison_Pool) {
			scr_Bullet_Replicate_Properties();
		    sprite_index = spr_Jelly_Pool;
			bulletsize = other.bulletsize * 1.8;
			image_xscale = 0;
			image_yscale = 0;
		    bulletspeed = other.bulletspeed * 0;
		    bulletpower = other.bulletpower * 0.15;
		    speed = bulletspeed;
		    direction = 0;
		    alarm[0] = 175;
		}
	}
}

instance_destroy();