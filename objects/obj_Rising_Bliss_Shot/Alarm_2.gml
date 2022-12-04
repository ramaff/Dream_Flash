/// @description Insert description here
// You can write your code in this editor
alarm[2] = 180 + random(30);

var dir = -12;

repeat(5) {
	with instance_create(x,y,obj_Fasing_Bullet_Parent) {
	    scr_Bullet_Replicate_Properties();
	    sprite_index = spr_Glowy_Green_Shot;
	    bulletspeed = other.bulletspeed * 1;
	    bulletpower = other.bulletpower * 0.5;
	    speed = bulletspeed;
	    direction = 90 + dir;
	    bulletlifespan = 240;
	    alarm[0] = bulletlifespan;
	}
	dir += 6;
}
