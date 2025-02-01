// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_bullet_dampen_v2(dampen = 5, _bullet_stats) {
	_bullet_stats.bullet_power -= dampen
	
	if _bullet_stats.bullet_power < 2 || _bullet_stats.bullet_power_max <= 0 {
		instance_destroy();
		exit;
	}
	
	_bullet_stats.bullet_size = _bullet_stats.bullet_size_max * sqrt(_bullet_stats.bullet_power / _bullet_stats.bullet_power_max);
	
	if _bullet_stats.bullet_size < 0.1 {
		_bullet_stats.bullet_size = 0.1;
	}
	if _bullet_stats.bullet_size > _bullet_stats.bullet_size_max {
		_bullet_stats.bullet_size = _bullet_stats.bullet_size_max	
	}
	
	image_xscale = _bullet_stats.bullet_size;
	image_yscale = _bullet_stats.bullet_size;
				
}

function scr_Bullet_Dampen(dampen = 5) {
	bulletpower -= dampen
	
	if bulletpower < 2 || bulletpowermax <= 0 {
		instance_destroy();
		exit;
	}
	
	bulletsize = bulletsizemax * sqrt(bulletpower / bulletpowermax);
	
	if bulletsize < 0.1 {
		bulletsize = 0.1;
	}
	if bulletsize > bulletsizemax {
		bulletsize = bulletsizemax	
	}
	
	image_xscale = bulletsize;
	image_yscale = bulletsize;
				
}