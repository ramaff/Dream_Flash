
var dir = random(360);
var spdf = 1.3;
	repeat(2) {
	    repeat(8) {
	        dir += 45;
	        with instance_create(x,y,obj_Modest_Wave_Bullet) {
	            scr_Bullet_Replicate_Properties();
	            sprite_index = spr_Glowy_Green_Shot;
	            bulletspeed = other.bulletspeed * spdf;
	            bulletpower = other.bulletpower * 0.5;
				bulletsize = 0.5;
				image_xscale = bulletsize;
				image_yscale = bulletsize;
	            speed = bulletspeed;
	            direction = dir;
	        }
	    }
		spdf += 0.4;
	}
	
dir = random(360);
spdf = 0.6;
repeat(16) {
	dir += 22.5;
	with instance_create(x,y,obj_Basic_Bullet) {
	    scr_Bullet_Replicate_Properties();
	    sprite_index = spr_Glowy_Green_Shot;
	    bulletspeed = other.bulletspeed * spdf;
	    bulletpower = other.bulletpower * 0.5;
		bulletsize = 0.5;
		image_xscale = bulletsize;
		image_yscale = bulletsize;
	    speed = bulletspeed;
	    direction = dir;
	}
}
	
image_index = 1;

alarm[3] = 15;
	
alarm[2] = 120 + random(15);

