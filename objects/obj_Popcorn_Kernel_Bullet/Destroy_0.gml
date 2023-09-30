/// @description Insert description here
// You can write your code in this editor

var _og_dir = 0;

with instance_create(x,y,obj_Friction_Bullet) {
    scr_Bullet_Replicate_Properties();
	bulletlifespan = 180;
	alarm[0] = bulletlifespan;
    bulletsize = 0.7 + random(0.05);
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    soulshotblock = 0;
    sprite_index = spr_Glowy_Yellow_Shot;
    bulletspeed = other.bulletspeed + 5;
    bulletpower = global.stagedamage * 1.5;
    direction = scr_Soul_Point() - 90 + random(180);
    speed = bulletspeed;
	
	_og_dir = direction
}  

repeat(3) {
	var _dir = random(360);
	var _xx = lengthdir_x(20, _dir);
	var _yy = lengthdir_y(20, _dir);
	
	with instance_create(x + _xx, y + _yy, obj_Friction_Bullet) {
	    scr_Bullet_Replicate_Properties();
		bulletlifespan = 180;
		alarm[0] = bulletlifespan;
	    bulletsize = 0.35 + random(0.15);
	    image_xscale = bulletsize;
	    image_yscale = bulletsize;
	    soulshotblock = 0;
	    sprite_index = spr_Glowy_Yellow_Shot;
	    bulletspeed = other.bulletspeed + 5;
	    bulletpower = global.stagedamage;
	    direction = _og_dir
	    speed = bulletspeed;
	}  
}