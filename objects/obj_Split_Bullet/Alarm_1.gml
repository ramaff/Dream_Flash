/// @description Insert description here
// You can write your code in this editor
var dir = -(6 + random(4));
    repeat(2) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = other.sprite_index;
            bulletspeed = other.bulletspeed;
            bulletpower = other.bulletpower;
            speed = bulletspeed;
            direction = other.direction + dir;
			
			bulletlifespan = 180;
			alarm[0] = bulletlifespan;
        }
		dir += dir * -2;
    }

instance_destroy();