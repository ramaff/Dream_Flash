/// @description Insert description here
// You can write your code in this editor

bulletbounceY += bounce_speed
bounce_speed -= bounce_gravity

y -= bounce_speed

if bulletbounceY + bounce_speed < 0 {
	bounce_speed = bounce_speed * -1;
	
	dir = random(360)
    repeat(8) {
        dir += 360 / 8;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletlife = 180;
			alarm[0] = bulletlife;
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = global.stagedamage;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	repeat(4) {
        dir += 360 / 4;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletlife = 180;
			alarm[0] = bulletlife;
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 1.333;
            bulletpower = global.stagedamage;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	dir += 22.5
	repeat(4) {
        dir += 360 / 4;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletlife = 180;
			alarm[0] = bulletlife;
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 0.75;
            bulletpower = global.stagedamage;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	
}
