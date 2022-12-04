/// @description Insert description here
// You can write your code in this editor

    dir = random(360);
	ddir = 0;
	repeat(7) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Fire_Shot;
            bulletspeed = other.bulletspeed * 0.45;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 360 / 7;
    }
	dir += 360 / 28;
	repeat(14) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Fire_Shot;
            bulletspeed = other.bulletspeed * 0.3;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 360 / 14;
    }

// Inherit the parent event
event_inherited();

