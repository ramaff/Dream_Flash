/// @description Insert description here
// You can write your code in this editor

    dir = random(360)
	bulletlife = bulletlife * 2;
    repeat(16) {
        dir += 360 / 16;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 0.775;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	repeat(8) {
        dir += 360 / 8;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	dir += 22.5
	repeat(8) {
        dir += 360 / 8;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 0.55;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }

// Inherit the parent event
event_inherited();

