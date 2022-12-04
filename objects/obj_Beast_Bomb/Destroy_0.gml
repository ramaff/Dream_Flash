/// @description Insert description here
// You can write your code in this editor

    var dir = random(360);
	var ddir = 0;
	bulletlife = bulletlife * 2;
	repeat(32) {
        with instance_create(x,y,obj_Direction_Phase_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Enemy_Bullet_Spike;
            bulletspeed = other.bulletspeed * 0.9;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + dir + ddir;
        }
		ddir += 360 / 32;
    }
	
	scr_Screen_Shake(7,5)

// Inherit the parent event
event_inherited();

