/// @description Insert description here
// You can write your code in this editor
with instance_create(x,y,obj_Stationary_Damager) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Boss_Ground_Spike_Mask;
			image_index = other.image_index;
			image_speed = other.image_speed;
			image_alpha = 0;
            bulletspeed = 0;
            bulletpower = other.bulletpower;
            speed = bulletspeed;
            direction = 0;
            bulletlifespan = 25;
            alarm[0] = 25;
        }

/*
var dirr = 90;
repeat(2) {
	with instance_create(x,y,obj_Basic_Bullet) {
	    scr_Bullet_Replicate_Properties();
		bulletsize = 0.5;
		image_xscale = 0.5;
		image_yscale = 0.5;
	    sprite_index = spr_Glowy_Ruby_Shot;
	    bulletspeed = other.bulletspeed * 1.5;
	    bulletpower = other.bulletpower * 1;
	    speed = bulletspeed;
	    direction = other.direction + dirr;
	    alarm[0] = 180;
	}
	dirr += 180;
}