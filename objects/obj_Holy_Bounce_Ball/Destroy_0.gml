
var dir = 0;
var sfac = 0.8;
repeat(4) {
	sfac = 0.7;
	repeat(2) {
	    with instance_create(x,y,obj_Zig_Zag_Bullet) {
	        scr_Bullet_Replicate_Properties();
	        sprite_index = spr_Glowy_Yellow_Shot;
	        bulletsize = 0.5;
	        image_xscale = bulletsize;
	        image_yscale = bulletsize;
	        bulletspeed = other.bulletspeed * sfac;
	        bulletpower = other.bulletpower * 0.5;
	        speed = bulletspeed;
	        direction = dir;
		}
		sfac += 0.25;
	}
	dir += 90;
}
alarm[1] = 80;

scr_Screen_Shake(7,5);