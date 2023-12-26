/// @description Insert description here
// You can write your code in this editor

var tar = id;

var _count = 3;

if champ = 2 {
	_count = 2;	
}

repeat(_count) 
{
	with instance_create(x,y,obj_Lingering_Fire_Trail_Follow_Bullet) {
		scr_Bullet_Replicate_Properties();
		target = tar;
		sprite_index = other.sprite_index;
		bulletsize = other.bulletsize;
		image_xscale = bulletsize;
		image_yscale = bulletsize;
		bulletspeed = other.bulletspeed;
		bulletpower = global.stagedamage;
		speed = bulletspeed;
		direction = other.direction;
		tar = id;
	}
}