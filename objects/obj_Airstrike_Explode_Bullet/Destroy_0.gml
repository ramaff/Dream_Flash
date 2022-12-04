/// @description Insert description here
// You can write your code in this editor

with instance_create(x,y,obj_Explode_Hit) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Boss_Bullet_Explosion;
    image_speed = 1;
    bulletsize = 0.7;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    bulletspeed = 0;
    bulletpower = other.bulletpowermax;
    speed = 0;
    alarm[0] = 15;
}

if soulshotblock > 0 {
	if ds_exists(projectile_hits, ds_type_list) {
		ds_list_destroy(projectile_hits);
	}
}