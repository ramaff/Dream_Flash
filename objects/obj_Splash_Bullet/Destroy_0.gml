/// @description Insert description here
// You can write your code in this editor

    dir = random(360);
	ddir = 0;
	bulletlife = 180;
	repeat(3) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Water_Drop_Bullet;
            bulletspeed = other.bulletspeed * 1.45;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 120;
    }
	repeat(3) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Water_Drop_Bullet;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 120;
    }
	dir += 30;
	repeat(6) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Water_Drop_Bullet;
            bulletspeed = other.bulletspeed * 1.1;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 60;
    }
	dir += 15;
	repeat(12) {
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Water_Drop_Bullet;
            bulletspeed = other.bulletspeed * 0.75;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 30;
    }

// Inherit the parent event
event_inherited();

