
	var dir = 0;
    var spawned_bullet_sprite = spr_Glowy_Purple_Shot;
	var spawned_pool_sprite = spr_Jelly_Pool;
	if sprite_index = spr_Poison_Lob_Shot {
		spawned_bullet_sprite = spr_Glowy_Green_Shot;
		spawned_pool_sprite = spr_Poison_Pool;
	}
    repeat(4) {
        dir += 90;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spawned_bullet_sprite;
            bulletspeed = other.bulletspeed * (1);
            bulletpower = global.stagedamage;
            speed = bulletspeed;
            direction = other.direction + dir;
            bulletlifespan = 180;
            alarm[0] = 180;
        }
    }
	
	with instance_create(x,y,obj_Poison_Pool) {
        scr_Bullet_Replicate_Properties();
        bulletsprite = spawned_pool_sprite;
        sprite_index = spawned_pool_sprite;
        bulletspeed = 0;
        bulletpower = global.stagedamage;
        bulletlifespan = 180;
        alarm[0] = 180;
        bulletsize = 0.5;
        image_xscale = 0;
        image_yscale = 0;
        speed = bulletspeed;
    }

// Inherit the parent event
event_inherited();
