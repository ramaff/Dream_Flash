/// @description Insert description here
// You can write your code in this editor

    dir = random(360);
	ddir = 0;
	repeat(4) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Fire_Shot;
            bulletspeed = other.bulletspeed * 0.3;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 90;
    }
	repeat(4) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Fire_Shot;
            bulletspeed = other.bulletspeed * 0.35;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 90;
    }
	repeat(4) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Fire_Shot;
            bulletspeed = other.bulletspeed * 0.4;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 90;
    }
	//dir += 15;
	repeat(8) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Fire_Shot;
            bulletspeed = other.bulletspeed * 0.25;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 45;
    }

// Inherit the parent event
event_inherited();

