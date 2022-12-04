
var dir = random(360);
var sfac = 0.8;
repeat(12) {
	sfac = 0.7;
	repeat(2) {
	    with instance_create(x,y,obj_Direction_Bullet) {
	        scr_Bullet_Replicate_Properties();
	        sprite_index = spr_Glowy_Enemy_Shot;
	        bulletsize = 0.5;
	        image_xscale = bulletsize;
	        image_yscale = bulletsize;
	        bulletspeed = other.bulletspeed * sfac;
	        bulletpower = other.bulletpower * 0.5;
	        speed = bulletspeed;
	        direction = other.direction + dir;
		}
		sfac += 0.25;
	}
	dir += 360 / 12;
}
alarm[1] = 80;

scr_Screen_Shake(7,5);

direction = scr_Soul_Point();