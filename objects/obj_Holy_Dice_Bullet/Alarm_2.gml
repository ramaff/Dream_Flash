/// @description Insert description here
// You can write your code in this editor
alarm[2] = 120 + random(120);

var dir = random(360);

repeat(3) {
	with instance_create(x,y,obj_Basic_Bullet) {
	    scr_Bullet_Replicate_Properties();
		bulletsize = 0.5;
		image_xscale = 0.5;
		image_yscale = 0.5;
	    sprite_index = spr_Glowy_Yellow_Shot;
	    bulletspeed = other.bulletspeed * 1;
	    bulletpower = other.bulletpower * 1;
	    speed = bulletspeed;
	    direction = dir;
	    alarm[0] = 300;
	}
	dir += 120;
}

speed = bulletspeed * 0.1;	
