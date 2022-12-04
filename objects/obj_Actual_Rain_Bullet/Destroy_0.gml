/// @description Insert description here
// You can write your code in this editor

var dir = -50 + random(10);
repeat(4) {
    with instance_create(x,y,obj_Direction_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 400;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Tear_Drop_Bullet;
        bulletspeed = other.bulletspeed * 0.33;
        bulletpower = other.bulletpowermax;
        direction = dir;
        speed = bulletspeed;
    }   
    dir += 90;
}

if soulshotblock > 0 {
	if ds_exists(projectile_hits, ds_type_list) {
		ds_list_destroy(projectile_hits);
	}
}