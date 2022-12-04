/// @description Insert description here
// You can write your code in this editor
if distance_to_point(obj_Soul_Parent.x, obj_Soul_Parent.y) > 100 {
	with instance_create(x,y,obj_Array_Bullet) {
	    scr_Bullet_Replicate_Properties();
		bulletsize = 0.5;
		image_xscale = 0.5;
		image_yscale = 0.5;
	    sprite_index = spr_Glowy_Enemy_Shot;
	    bulletspeed = other.bulletspeed * 1;
	    bulletpower = other.bulletpower * 1;
	    speed = bulletspeed;
	    direction = other.direction + 90;
	    alarm[0] = 180;
	}
	with instance_create(x,y,obj_Array_Bullet) {
	    scr_Bullet_Replicate_Properties();
		bulletsize = 0.5;
		image_xscale = 0.5;
		image_yscale = 0.5;
	    sprite_index = spr_Glowy_Enemy_Shot;
	    bulletspeed = other.bulletspeed * 1;
	    bulletpower = other.bulletpower * 1;
	    speed = bulletspeed;
	    direction = other.direction - 90;
	    alarm[0] = 180;
	}

}

