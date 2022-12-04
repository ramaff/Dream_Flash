/// @description Insert description here
// You can write your code in this editor
var seek = irandom(4);

if seek = 2 {
	with instance_create(x,y,obj_Phase_Home_No_Dir_Bullet) {
        scr_Bullet_Replicate_Properties();
        bulletsize = 0.4 + random(0.1);
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        sprite_index = spr_Heart_Bullet;
        bulletspeed = other.bulletspeed * (1 + random(0.33));
        bulletpower = other.bulletpower * 1;
        move_towards_point(instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y, bulletspeed);
        bulletlife = (distance_to_object(instance_nearest(x,y,obj_Soul)) / bulletspeed) + 120;
		speed = bulletspeed;
		alarm[0] = bulletlife;
	}
}

instance_destroy();