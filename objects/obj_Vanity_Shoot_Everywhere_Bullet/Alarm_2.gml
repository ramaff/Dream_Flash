var dir = scr_Soul_Point() - 60;

repeat(5) {
    var sspeed = 0.7;
    repeat(3) {
	    with instance_create(x,y,obj_Basic_Bullet) {
	        scr_Bullet_Replicate_Properties();
	        bulletsize = 0.5;
	        image_xscale = bulletsize;
	        image_yscale = bulletsize;
	        sprite_index = spr_Glowy_Dark_Blue_Shot;
	        bulletspeed = other.bulletspeed * 1.5 * sspeed;
	        bulletpower = other.bulletpower * 0.5;
	        direction += dir
	        speed = bulletspeed;
	    }
	    sspeed += 0.25;
    }
    dir += 30;
}

direction = scr_Soul_Point() - 90 + random(180);

alarm[1] = 15;
image_index = 1;