alarm[1] = 20;

with instance_create(x,y,obj_Fasing_Bullet_Parent) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = bulletsize;
	image_yscale = bulletsize;
    sprite_index = spr_Glowy_Pink_Shot;
    bulletspeed = other.bulletspeed * 0.15;
    bulletpower = other.bulletpower;
    speed = bulletspeed;
    direction = other.direction - 5 + random(10);
    bulletlifespan = 90;
    alarm[0] = 90;
}

