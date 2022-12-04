/// @description Insert description here
// You can write your code in this editor
alarm[3] = 120 + leveltime + random(60);

orbiting = 1;

leveltime += 60;

var dir = 0;

repeat(6) {

	with instance_create(x,y,obj_Expanding_Orbit_Bullet) {
	    scr_Bullet_Replicate_Properties();
		bulletsize = 0.5;
		image_xscale = 0.5;
		image_yscale = 0.5;
	    sprite_index = spr_Glowy_Orange_Shot;
	    bulletspeed = other.bulletspeed * 0.6;
	    bulletpower = other.bulletpower * 0.5;
	    speed = bulletspeed;
	    direction = other.bulletAngle - 90;
	    alarm[0] = 180 + random(30);
	
		bulletOrbit = 0;
	    bulletAngle = dir;
	    bulletCenterX = x;
	    bulletCenterY = y;
	}
	dir += 60;

}