/// @description Insert description here
// You can write your code in this editor
var dir = random(360);
repeat(3) {
		bulletlife = 160;
	    with instance_create(x,y,obj_Vanity_Shoot_Everywhere_Bullet) {
	        scr_Bullet_Replicate_Properties();
	        bulletsize = 0.5;
	        image_xscale = bulletsize;
	        image_yscale = bulletsize;
	        sprite_index = spr_Vanity_Bomb;
			image_speed = 0.5;
	        bulletspeed = other.bulletspeed * 0.5
	        bulletpower = other.bulletpower;
	        direction = dir;
	        speed = bulletspeed;
			alarm[0] = 160;
	    }
	    dir += 120;
    }