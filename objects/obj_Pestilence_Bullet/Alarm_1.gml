alarm[1] = 6 + irandom(6);

with instance_create(x,y,obj_Poison_Pool) {
    scr_Bullet_Replicate_Properties();
	image_speed = 0.2;
    sprite_index = spr_Corrosive_Pool;
	bulletsize = other.bulletsize * (0.4 + random(0.05));
	image_xscale = 0;
	image_yscale = 0;
    bulletspeed = other.bulletspeed * 0;
    bulletpower = other.bulletpower * 0.15;
    speed = bulletspeed;
    direction = 0;
    alarm[0] = 35 + random(7);
}