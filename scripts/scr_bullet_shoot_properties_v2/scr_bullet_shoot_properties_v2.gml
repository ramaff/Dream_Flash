function scr_bullet_shoot_properties_v2(_bullet_stats = bullet_stats) {

	depth = _bullet_stats.bullet_depth;
	        
	image_blend = _bullet_stats.bullet_blend
	sprite_index = asset_get_index(_bullet_stats.bullet_sprite);
	_bullet_stats.bullet_size = _bullet_stats.bullet_size * 0.5;
	_bullet_stats.bullet_size_max = _bullet_stats.bullet_size;
	image_xscale = _bullet_stats.bulletsize;
	image_yscale = _bullet_stats.bulletsize;
	_bullet_stats.bullet_speed_max = _bullet_stats.bullet_speed;
	if _bullet_stats.bullet_power < global.stagedamage {
		_bullet_stats.bullet_power = global.stagedamage;	
	}
	_bullet_stats.bullet_power_max = _bullet_stats.bullet_power;
	
	scr_E08_v2(_bullet_stats);
	
	if _bullet_stats.bullet_bounce_gravity = 0 {
		_bullet_stats.bullet_bounce_gravity = 2 * _bullet_stats.bounce_speed / _bullet_stats.bullet_lob_time;
	}
			
	if _bullet_stats.bullet_direction_angle = 1 {
		image_angle = direction;	
	}
	image_speed = _bullet_stats.bullet_image_speed;
	alarm[0] = _bullet_stats.bullet_life_span;
	alarm[8] = 2;
				
	_bullet_stats.bullet_speed = _bullet_stats.bullet_speed * ((200 + global.soulparanoia + global.soulparanoiaTemp) / 200) * ((200 + global.soulloathing + global.soulloathingTemp) / 200);
	
	speed = _bullet_stats.bullet_speed;
	
	with instance_create(x,y, obj_LightS) {
		target = other.id;
		//lightsize = other.shot_stats.Shot_Light_Size;
				
		//sprite_index = spr_Bullet_Glow;
		lightsize = _bullet_stats.bulletsize;
	}
				
	depth = _bullet_stats.bullet_depth;
				
	if bulletblend != 0 {
		scr_Bullet_Blend(bulletblend);	
	}
	
	if global.XA[2] > 0 {
		scr_XA02_bullet_v2(_bullet_stats);
	}



}
