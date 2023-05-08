var dir = random(360);
var sfac = 0.8;
repeat(30) {
	sfac = 0.8;
	with instance_create(x,y,obj_Direction_Bullet) {
	    scr_Bullet_Replicate_Properties();
	    sprite_index = spr_Glowy_Enemy_Shot;
	    bulletsize = 0.5;
	    image_xscale = bulletsize;
	    image_yscale = bulletsize;
	    bulletspeed = other.bulletspeed * sfac;
	    bulletpower = global.stagedamage;
		bulletpowermax = global.stagedamage;
	    speed = bulletspeed;
	    direction = other.direction + dir;
	}
	dir += 360 / 30;
}

var dir = random(360);
var sfac = 1;
repeat(12) {
	sfac = 1;
	repeat(3) {
	    with instance_create(x,y,obj_Direction_Bullet) {
	        scr_Bullet_Replicate_Properties();
	        sprite_index = spr_Glowy_Enemy_Shot;
	        bulletsize = 0.5;
	        image_xscale = bulletsize;
	        image_yscale = bulletsize;
	        bulletspeed = other.bulletspeed * sfac;
	        bulletpower = global.stagedamage;
			bulletpowermax = global.stagedamage;
	        speed = bulletspeed;
	        direction = other.direction + dir;
		}
		sfac += 0.2;
	}
	dir += 360 / 12;
}

scr_Screen_Shake(15,7);