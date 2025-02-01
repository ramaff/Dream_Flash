// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_expand_then_contract_v2(_timer = alarm[0], _size = bullet_stats.bullet_size, _expand_time = 60, _expand_rate = 0.01){

	if _timer <= _expand_time and _timer > 15 {
		_size += _size * _expand_rate;
	
	} if _timer < 15 {
		_size -= _size / _timer
	}
	
	return _size

}

function scr_Expand_Then_Contract(_timer = alarm[0], _size = bulletsize, _expand_time = 60, _expand_rate = 0.01){

	if _timer <= _expand_time and _timer > 15 {
		_size += _size * _expand_rate;
	
	} if _timer < 15 {
		_size -= _size / _timer
	}
	
	return _size

}