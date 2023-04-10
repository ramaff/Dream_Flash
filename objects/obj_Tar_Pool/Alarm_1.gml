/// @description Insert description here
// You can write your code in this editor
	var dir = -45 + random(90);
	repeat(1) {
		with instance_create(x,y,obj_Lob_Bullet) {
	        scr_Bullet_Replicate_Properties();
			bullet_bounce_Y = 0;
			bullet_bounce_speed = -1 * (3 + random(2));
			bulletlobtime = 50 + random(30);
			bullet_bounce_gravity = 2 * bullet_bounce_speed / bulletlobtime;
			bulletlife = bulletlobtime + 2;
			alarm[0] = bulletlife;
            bulletsize = 0.5;
			bulletsizemax = bulletsize;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Glowy_Purple_Shot;
            bulletspeed = 4;
            bulletpower = global.stagedamage
            direction = scr_Soul_Point() + dir;
            speed = bulletspeed;
		}
	}

alarm[1] = 90 + random(30);
