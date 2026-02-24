// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bullet_expand_before_contract_v2(_bullet_stats, _remaining_time = alarm[0], _expand_time = 60, _expand_rate = 0.01){

	if _remaining_time <= _expand_time and _remaining_time > 15 {
		_bullet_stats.bullet_size += _bullet_stats.bullet_size * _expand_rate;
		_bullet_stats.bullet_size = clamp(_bullet_stats.bullet_size, 0.01, 4);
	
		image_xscale = _bullet_stats.bullet_size;
		image_yscale = _bullet_stats.bullet_size;
	}

}

function scr_Bullet_Expand_Before_Contract(_expand_time = 60, _expand_rate = 0.01) {

	if alarm[0] <= _expand_time and alarm[0] > 15 {
		bulletsize += bulletsize * _expand_rate;
	
		image_xscale = bulletsize;
		image_yscale = bulletsize;
	} 

}
