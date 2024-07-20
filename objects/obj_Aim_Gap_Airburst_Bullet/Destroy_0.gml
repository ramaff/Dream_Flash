/// @description Insert description here
// You can write your code in this editor
var dir = -45;
    repeat(5) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
			bulletsize = 0.5
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            bulletspeed = other.bulletspeed * 1.2;
            bulletpower = other.bulletpowermax * 0.66;
            speed = bulletspeed;
            direction = other.direction + dir;
			
			bulletlifespan = 300;
			alarm[0] = bulletlifespan;
        }
		dir += 22.5;
    }
