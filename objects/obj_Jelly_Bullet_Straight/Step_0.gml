/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
scr_Wall_Bounce()

bulletbounceY += bounce_speed
bounce_speed -= bounce_gravity

y -= bounce_speed


if bulletbounceY + bounce_speed < 0 {
	bounce_speed = bounce_speed * -1;
	
	var spawned_pool_sprite = spr_Jelly_Pool;
	if sprite_index = spr_Poison_Lob_Shot {
		spawned_pool_sprite = spr_Poison_Pool;
	}
	
	with instance_create(x,y,obj_Poison_Pool) {
        scr_Bullet_Replicate_Properties();
        bulletsprite = spawned_pool_sprite;
        sprite_index = spawned_pool_sprite;
        bulletspeed = 0;
        bulletpower = global.stagedamage;
        bulletlifespan = 180;
        alarm[0] = 180;
        bulletsize = 0.33;
        image_xscale = 0;
        image_yscale = 0;
        speed = bulletspeed;
    }
}
