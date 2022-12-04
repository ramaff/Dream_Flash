function scr_Direction_Beam() {
	scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        with instance_create(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),bullet_type) {
	            bullet_origin = other;
	            bulletorigin = other;
	            target = other;   
            
	            bulletID = other.bullet_id;
	            projectile_hit_id = other.bullet_hit_ID;
	            projectile_hits = ds_list_create();
	            ds_list_copy(projectile_hits, other.bullet_hit_list);
	            bossPart = other.boss_Part;
	            soulshotblock = other.soul_shot_block;
	            bulletsprite = other.bullet_sprite;
	            sprite_index = bulletsprite;
	            baseDepth = 0;
	            bulletsize = other.bullet_size;
	            image_xscale = other.bullet_size;
	            image_yscale = other.bullet_size;
	            bulletspeed = other.bullet_speed;
	            bulletpower = other.bullet_power;
	            speed = other.speed * bulletspeed;
	            image_speed = other.bullet_image_speed;
	            bulletlife = other.bullet_lifespan;
	            alarm[0] = other.bullet_lifespan;
	            direction = other.direction;
	            image_angle = other.direction + other.bullet_direction + (other.dir) * ((20 + random(global.soulparanoia)) / 20);
	        }
	        dir += bullet_spread;
	    }



}
