/// @description Insert description here
// You can write your code in this editor


var _tar = id;
repeat(2) {
	with instance_create(x,y,obj_Follow_The_Leader_Bullet) {
		scr_Bullet_Replicate_Properties();
		target = _tar;
		sprite_index = other.sprite_index;
		bulletsize = other.bulletsize;
		image_xscale = bulletsize;
		image_yscale = bulletsize;
		bulletspeed = other.bulletspeed * 1;
		bulletpower = global.stagedamage;
		speed = bulletspeed;
		direction = other.direction - 180;
		_tar = id;
	}
}