var dir = scr_Soul_Point() - 60;

repeat(16) {
    var sspeed = 1;
    repeat(2) {
	    with instance_create(x,y,obj_Rebound_Bullet) {
	        scr_Bullet_Replicate_Properties();
			bulletlife = 180;
			alarm[0] = bulletlife;
	        bulletsize = 0.5;
	        image_xscale = bulletsize;
	        image_yscale = bulletsize;
	        sprite_index = spr_Glowy_Dark_Blue_Shot;
	        bulletspeed = other.bulletspeed * 1.25 * sspeed;
	        bulletpower = other.bulletpower * 0.5;
	        direction += dir
	        speed = bulletspeed;
	    }
	    sspeed += 0.25;
    }
    dir += 360 / 16;
}

direction = scr_Soul_Point() - 45 + random(90);

alarm[1] = 15;
image_index = 1;